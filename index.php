<?php
//using PHP 7 strict types throughout the app 
declare(strict_types=1);
/**
 * We are using user sessions to store metadata for referencing
 * some values instead.  Ideally we would like to cache some global
 * within an application state to avoid unneccesary calls to DB for
 * commonly used data.
 */
session_start();

/*
ini_set('display_errors',1);
error_reporting(E_ALL & ~E_DEPRECATED & ~E_STRICT);
*/
use Jobboard\Source\Lib as APP;

require 'app/init.php';

/**
 * Initiate app by calling Bootstrap Class. This will load
 * the controller dynamically based on the URL Param being set.
 */
$app = new APP\Bootstrap();
