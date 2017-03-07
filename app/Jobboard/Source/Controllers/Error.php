<?php

declare(strict_types=1);

namespace Jobboard\Source\Controllers;

use \Jobboard\Source\Lib as Lib;

/**
* CONTROLLER
*/
class Error
{

    function __construct(array $params)
    {

        $content = [];

        //send page to the model to get back the content of what should be loaded
        $view = new Lib\View;
        $view->setData($content);
        $view->setTemplate('oops');
        $view->render();
    }
}
