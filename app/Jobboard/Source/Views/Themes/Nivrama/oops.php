<?php
  $this->pageTitle = $this->siteName." - Oops!";

  $params = explode('?',$_SERVER['REQUEST_URI']);
  $root_uri = rtrim($params[0],'/').'/';

            $this->title = '';
            $this->header = '';
            $this->body = '';

  require 'templates/html_start.inc';
  require 'templates/header.inc';
?>
    <div class="container body-area">
      <div class="jumbotron">
        <div class="container">
          <h1>Oops! The page you are looking for does not exist.</h1>
          <p>We are sorry for this inconvenience. Please check your spelling, try again or contact the administrator.
          <?php
            if(!is_null($this->reason))
              echo '<br><strong>Reason: </strong> '.$this->reason; 
          ?></p>
        </div>
      </div>
    </div>
<?php
  require 'templates/footer.inc';
  require 'templates/html_end.inc';
?>
