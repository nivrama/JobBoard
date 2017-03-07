<?php

declare(strict_types=1);

namespace Jobboard\Source\Models;

/**
* MODEL!!!!
*/
class Dashboard extends \Jobboard\Source\Lib\Database
{
    private $_recruiter_id;
    private $_sort_by = 'job_id';
    private $_sort_type = 'DESC';
    
    function __construct(int $id=0)
    {
        parent::__construct();
        $this->setRecruiter($id);
    }

    final private function setRecruiter(int $id)
    {
        $this->_recruiter_id = $id;
    }

    final public function getDashboard()
    {
        $response = [];

        $recruiterSql = $this->sqlQuery(
            'SELECT r.*, c.company_name FROM recruiter r '
            .'LEFT JOIN company c ON r.company_id = c.company_id '
            .'WHERE r.recruiter_id = :rid',['rid'=>$this->_recruiter_id]
        );
        $recruiter = $this->getResponse();

        $response['status'] = $recruiter['status'];

        /**
         * If the recruiter exists, get the list of posted jobs
         */
        if ($recruiter['status']) {
            /**
             * Set the recruiter info inside the response.
             * Ideally we would just store the recruiter info inside a SESSION
             */
            $response['recruiter'] = $recruiter['result'][0];

            //Get list of all created Job Posts
            $jobsSql = $this->sqlQuery(
                'SELECT * FROM job '
                .'WHERE recruiter_id = :rid '
                .'ORDER BY '.$this->_sort_by.' '.$this->_sort_type
                .' LIMIT 0,20',['rid'=>$this->_recruiter_id]
            );
            $jobList = $this->getResponse();
            //add joblist to response if any, else return empty array
            $response['jobs'] = $jobList['status'] ? $jobList['result'] : [];
        } else {
            $response['reason'] = $recruiter['reason'];
        }

        return $response;

    }
    /**
     * This method will set the ORDER BY within the requestes SQL Statement
     * We set an array of valid allowed columns.
     */
    final public function setSortBy(string $col,$sort='asc')
    {
        $validCols = [
            'id' => 'job_id',
            'reference' => 'job_reference',
            'created' => 'job_created',
            'title' => 'title',
            'type' => 'job_type',
            'experience' => 'job_experience',
            'views' => 'total_views',
            'applicants' => 'total_applicants'
        ];

        $validSort = ['asc','desc'];

        if(array_key_exists($col, $validCols)
            && in_array(strtolower($sort), $validSort)
        ) {
            $this->_sort_by = $validCols[$col];
            $this->_sort_type = strtoupper($sort);
        }
    }

    final public function getJob($jobId)
    {
        $response = [];

        $params = [
            'rid'   => $this->_recruiter_id,
            'jid' => $jobId
        ];
        /**
         * This Statement will get the base job info as well as the previous
         * and next job_id.  The latter two can be removed if there is a 
         * performance issue or if the navigation is not wanted.
         */
        $this->sqlQuery('SET @rid = :rid, @jid = :jid', $params);

        $jobSql = $this->sqlQuery(            
            'SELECT j.*,'
            .'    (IFNULL((SELECT '
            .'               MAX(pj.job_id) '
            .'             FROM '
            .'               job pj '
            .'             WHERE pj.recruiter_id = @rid AND '
            .'               pj.job_id < @jid), '
            .'            0)) previous, '
            .'    (IFNULL((SELECT '
            .'               MIN(pj.job_id) '
            .'             FROM '
            .'               job pj '
            .'             WHERE pj.recruiter_id = @rid AND '
            .'               pj.job_id > @jid), '
            .'            0)) next '
            .'FROM job j '
            .'WHERE j.recruiter_id = @rid AND j.job_id = @jid'
        );

        $job = $this->getResponse();

        $response['status'] = $job['status'];

        /**
         * If the job exists, get the list of posted jobs
         */
        if ($job['status']) {
            /**
             * Set the job info inside the response.
             */
            $response['job'] = $job['result'][0];
            //Get list of desired skills for this job
            $skilsSql = $this->sqlQuery(
                'SELECT j.skill_id, s.skill_name FROM job_skill j '
                .'INNER JOIN skill s ON j.skill_id = s.skill_id '
                .'WHERE j.job_id = @jid'
            );

            $skillsList= $this->getResponse();
            //add skillsList to response if any, else return empty array
            $response['job']['skills'] = $skillsList['status'] ? $skillsList['result'] : [];

            //Get list of all applicants for this job
            $applicantsSql = $this->sqlQuery(
                'SELECT * FROM job_applicants j '
                .'INNER JOIN seeker s '
                .'ON j.seeker_id = s.seeker_id '
                .'WHERE j.job_id = @jid'
            );

            $applicantsList= $this->getResponse();
            //add skillsList to response if any, else return empty array
            $response['job']['applicants'] = $applicantsList['status'] ? $applicantsList['result'] : [];

        } else {
            $response['reason'] = $job['reason'];
        }

        return $response;

    }
}
