<?php

declare(strict_types=1);

namespace Jobboard\Source\Lib;

use Jobboard as JB;
/**
 * Database extends PDO Class and acts as a base class for the other Models.
 * The db connection is established and returns an error if connection failed.
 * The sqlQuery() method allows for quick database queries using PDO params.
 * The status, along with any results and/or response can be acquired by
 * calling the getResponse() method, which returns an array.  
 */
class Database extends \PDO
{
    /**
     * MySQL Database Settings.
     * Settings are in configure.php
     */
    const DBHOST = JB\DB_HOST;
    const DBUSER = JB\DB_USER;
    const DBPASSWORD = JB\DB_PASS;
    const DBNAME = JB\DB_NAME;
    const DBPORT = JB\DB_PORT;
    //_response property holds the status and any other info
    private $_response = ['status'=>false];
    protected $_DBH = false;

    public function __construct()
    {
        try {

            //MySQL with PDO, with charset to help agains 2nd order injection
           parent::__construct(
                'mysql:host='.self::DBHOST.';port='.self::DBPORT
                .';dbname='.self::DBNAME.';charset=utf8',
                self::DBUSER,
                self::DBPASSWORD
            );


            $this->_DBH = $this;
            $this->_DBH->setAttribute(
                parent::ATTR_ERRMODE,
                parent::ERRMODE_EXCEPTION
            );
            //setting this helps againts possible 2nd order injections
            $this->_DBH->setAttribute(parent::ATTR_EMULATE_PREPARES,false);
            //if conenction was established return true
            $this->_response['status'] = true;

        } catch (\PDOException $e) {
            $this->_response['reason'] = 'Database Error:'.$e->getMessage();
        }
    }
    /**
     * Use this method to submit a SELECT statement
     * First param should be a valid SQL Statement
     * This will return an array with status and result
     * If status is false, Reason will be sent with error
     *
     *     Example without using parameters:
     *     Database::sqlQuery('SELECT * FROM table');
     *
     *     Example with parameters:
     *     $params = ['col'=>1];
     *     Database::sqlQuery('SELECT * FROM table WHERE column = :col',$params);
     */
    final public function sqlQuery(string $sql,array $params=NULL){
        //status is 
        if($this->_response['status']){
            //reset the response
            $this->_response = ['status'=>false];

            $this->_DBH->beginTransaction();

            try {
                $STH = $this->_DBH->prepare($sql);
                $STH->execute($params);
                $this->_response['status'] = true;

                //get the Statement Type
                $sqlType = explode(' ',$sql,2);
                //get insert id if this was a new insert statement
                if ($sqlType[0] == "INSERT") {
                    $insertId = $this->_DBH->lastinsertid();
                    $this->_response['insertId'] = $insertId;           
                //this will return any results if available
                }elseif($sqlType[0] == "SELECT"){
                    if ($STH->rowCount()>0) {
                        while ($row = $STH->fetch(parent::FETCH_ASSOC,parent::PARAM_STR)) {
                            $this->_response['result'][] = $row;
                        }
                    } else {
                        $this->_response['status'] = false;
                        $this->_response['reason'] = 'No Results Found';
                    }

                //return rowCount to know how many rows were updated
                } elseif($sqlType[0] == "UPDATE") {
                    $this->_response['rows_affected'] = $STH->rowCount();
                }

                //this returns last insertid if available
                $this->_DBH->commit();

                $STH = null;
            } catch (\PDOException  $e) {
                $this->_DBH->rollBack();
                $this->_response['status'] = false;
                $this->_response['reason'] = 'Database Error: '.$e->getMessage();
            }
        }
    }
    public function getResponse()
    {
        return $this->_response;
    }
    public function __destruct(){
        //let's close DB connection even though not needed for PDO
        $this->_DBH = null;
    }
}
