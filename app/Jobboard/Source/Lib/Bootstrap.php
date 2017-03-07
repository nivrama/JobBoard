<?php

declare(strict_types=1);

namespace Jobboard\Source\Lib;

/**
 * Bootstrap initiates the MVC app by loading the proper Controller Class.
 * The Controller Class is instantiated dynamically based on the URL Params.
 * If the Class does not exist, a default Error Class will be called.
 *
 * Commonly used data will be loaded into the USER SESSION to avoid having to
 * query the database.  Ideally we would like to cache this data for global use
 * throughout the application.
 *
 * @author Marvin Aleman <mraleman@gmail.com>
 */
class Bootstrap
{

    public function __construct()
    {
        //Get the url params and split them.
        $params = isset($_GET['url'])?explode('/',$_GET['url']):[''];

        //Creating the controller path with proper '\' or '/' based on server.
        $rootPath = realpath(__DIR__ . DIRECTORY_SEPARATOR . '..');
        $controlDir = DIRECTORY_SEPARATOR.'Controllers'.DIRECTORY_SEPARATOR;
        $controlPath = $rootPath.$controlDir;

        /**
         * Get the first parameter and use that as the filename to search for
         * the correct Controller Class to use.  If the parameter is empty, the
         * 'Index' Controller will be used as the default.
         *
         * Ex: The first parameter of 'http://localhost/dashboard' would be
         *      'dashboard'. Bootstrap will check to see if 'dashboard' class
         *      exists and if so will initiate it.
         */
        if (!isset($params[0]) || empty($params[0])) {
            $fileName = 'Index';
        } else {
            $fileName = ucwords($params[0]);
        }

        $file = $controlPath.$fileName.'.php';

        //If this class/file does not exist, let's display the error
        if (!file_exists($file)) {
            $fileName = 'Error';
        }

        $className = 'Jobboard\Source\Controllers\\'.$fileName;
        //Try and instantiate class and catch any errors.
        try {

            $controller = new $className($_GET);

        } catch (\Error $e) {
            //we will log this error if it exists
            echo 'An error occured! - '.$e->getMessage();
        }
    }
}
