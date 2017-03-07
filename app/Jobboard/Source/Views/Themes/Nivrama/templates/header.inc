    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header logo-cntr">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand logo" href="<?php echo $this->rootUrl; ?>">NiVRAMA</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <?php
            $find = '/\/dashboard\/\d*/i';
            preg_match_all($find, $_SERVER['REQUEST_URI'], $match);
          ?>
          <ul class="nav navbar-nav">
            <li><a href="<?php echo $this->rootUrl . $match[0][0]; ?>">Dashboard</a></li>
            <li><a href="#">Sign Out</a></li>
          </ul>
        </div><!--/.navbar-collapse -->
      </div>
      <div class="container top-body-border"></div>
    </nav>