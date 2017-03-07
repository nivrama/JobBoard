<?php

declare(strict_types=1);

namespace Jobboard\Source\Controllers;

use \Jobboard\Source\{Models as Models, Lib as Lib};

/**
* CONTROLLER
*/
class Dashboard
{

    function __construct(array $params)
    {
        $url = isset($params['url'])?explode('/',$params['url']):[''];

        //send page to the model to get back the response of what should be loaded

        //get the second index from the array which should be the recruiter id
        $rid = $url[1] ?? 0;
        $rid = intval($rid);
        $arg = $url[3] ?? null;

        $model = new Models\Dashboard($rid);

        if (isset($url[2]) && !is_null($url[2]) && !empty($url[2])) {
            $getMethod = 'get'.ucwords($url[2]);
            $template = strtolower($url[2]);
        } else {
            $getMethod = 'getDashboard';
            $template = 'dashboard';
        }

        if (!$rid) {
            $response = ['status'=>false,'reason'=>'Missing ID'];
        } elseif (!method_exists($model, $getMethod)) {
            $response = ['status'=>false,'reason'=>'Invalid Method'];
        } else {

            if (isset($params['col']) && !empty($params['col'])) 
                $model->setSortBy($params['col'],$params['sort']);
            
            $response = $model->$getMethod($arg);
        }

        $model = null;

        $template = $response['status'] ? $template : 'oops';
        //let's show correct view
        $view = new Lib\View;
        $view->setData($response);
        $view->setTemplate($template);
        $view->render();
    }

}
