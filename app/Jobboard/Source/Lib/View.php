<?php

declare(strict_types=1);

namespace Jobboard\Source\Lib;

use Jobboard as JB;

/**
* View Class will load the default view template.
* 
*/
class View
{
    private $template;

    /**
     * Set the data that will be used inside the Template.
     * Data must be an array.
     */
    final public function setData(array $data)
    {
        //Constants from the configure.php file
        $this->rootUrl = JB\APP_ROOT;
        $this->siteName = JB\SITE_NAME;
        $this->corpName = JB\CORP_NAME;
        $this->corpEst = JB\CORP_EST;

        /**
         *
         */
        if (isset($data['status']) && $data['status']) {
            $this->data = $data;
        } else {
            $this->reason = $data['reason'] ?? null;
            $this->description = $this->body;
        }
        $this->footer = '&copy;'.date('Y').' - '. $this->corpName .' - All Rights Reserverd.';
    }

    final public function setTemplate(string $template='oops')
    {
        $this->template = $template;
    }

    final public function render()
    {
        /**
    	 * Maybe for some future release we can have more themes here.
    	 * Keeping it simple so that we can create basic templates quickly.
    	 * For now we just have one theme = 'Nivrama'.
    	 */
    	$theme = 'Nivrama';

        require __DIR__.'/../Views/Themes/'.$theme.'/'.$this->template.'.php';
    }
}
