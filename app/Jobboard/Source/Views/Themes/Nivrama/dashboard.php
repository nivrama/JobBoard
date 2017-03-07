<?php

  $this->pageTitle = $this->siteName." - Recruiter Dashboard";

  $recruiter = $this->data['recruiter'];
  $jobs = $this->data['jobs'];

  $params = explode('?',$_SERVER['REQUEST_URI']);
  $root_uri = rtrim($params[0],'/').'/';

  require 'templates/html_start.inc';
  require 'templates/header.inc';

?>
    <div class="container body-area">
      <h1>Recruiter Dashboard</h1>
      <div class="text-right">
        <h4><?php echo '<strong>'.$recruiter['recruiter_fname'].' '.$recruiter['recruiter_lname'].'</strong>, '.$recruiter['company_name']; ?></h4>
        <?php echo 'E-mail: '.$recruiter['recruiter_email']; ?>
        <br>
        <?php echo 'Tel: '.$_SESSION['country_code'][$recruiter['country_code_id']]['code'].$recruiter['recruiter_phone']; ?>
      </div>
      
      <h2 class="sub-header">Job Posts</h2>
      <div class="table-responsive">
        <table class="table table-striped">
          <thead>
            <tr>
              <th class="text-center"><a href="<?php echo $root_uri.'?col=id&sort=desc'; ?>" class="glyphicon glyphicon-triangle-bottom"></a>&nbsp;ID&nbsp;<a href="<?php echo $root_uri.'?col=id&sort=asc'; ?>" class="glyphicon glyphicon-triangle-top"></th>
              <th class="text-center"><a href="<?php echo $root_uri.'?col=reference&sort=desc'; ?>" class="glyphicon glyphicon-triangle-bottom"></a>&nbsp;Ref#&nbsp;<a href="<?php echo $root_uri.'?col=reference&sort=asc'; ?>" class="glyphicon glyphicon-triangle-top"></th>
              <th class="text-center"><a href="<?php echo $root_uri.'?col=created&sort=desc'; ?>" class="glyphicon glyphicon-triangle-bottom"></a>&nbsp;Created&nbsp;<a href="<?php echo $root_uri.'?col=created&sort=asc'; ?>" class="glyphicon glyphicon-triangle-top"></th>
              <th class="text-center"><a href="<?php echo $root_uri.'?col=title&sort=desc'; ?>" class="glyphicon glyphicon-triangle-bottom"></a>&nbsp;Title&nbsp;<a href="<?php echo $root_uri.'?col=title&sort=asc'; ?>" class="glyphicon glyphicon-triangle-top"></th>
              <th class="text-center"><a href="<?php echo $root_uri.'?col=type&sort=desc'; ?>" class="glyphicon glyphicon-triangle-bottom"></a>&nbsp;Type&nbsp;<a href="<?php echo $root_uri.'?col=type&sort=asc'; ?>" class="glyphicon glyphicon-triangle-top"></th>
              <th class="text-center"><a href="<?php echo $root_uri.'?col=experience&sort=desc'; ?>" class="glyphicon glyphicon-triangle-bottom"></a>&nbsp;Experience&nbsp;<a href="<?php echo $root_uri.'?col=experience&sort=asc'; ?>" class="glyphicon glyphicon-triangle-top"></th>
              <th class="text-center"><a href="<?php echo $root_uri.'?col=views&sort=desc'; ?>" class="glyphicon glyphicon-triangle-bottom"></a>&nbsp;Views&nbsp;<a href="<?php echo $root_uri.'?col=views&sort=asc'; ?>" class="glyphicon glyphicon-triangle-top"></th>
              <th class="text-center"><a href="<?php echo $root_uri.'?col=applicants&sort=desc'; ?>" class="glyphicon glyphicon-triangle-bottom"></a>&nbsp;Applicants&nbsp;<a href="<?php echo $root_uri.'?col=applicants&sort=asc'; ?>" class="glyphicon glyphicon-triangle-top"></th>
              <th class="text-center">&nbsp;</th>
            </tr
          </thead>
          <tbody>
          <?php
              if(count($jobs) > 0){
                  for($i=0;$i<count($jobs);$i++){
          ?>
            <tr>
              <td class="text-center"><?php echo $jobs[$i]['job_id']; ?></td>
              <td class="text-center"><?php echo !empty($jobs[$i]['job_reference']) ? $jobs[$i]['job_reference'] : '-'; ?></td>
              <td class="text-center"><?php echo date('n/j/y g:ia',strtotime($jobs[$i]['job_created'])); ?></td>
              <td><?php echo $jobs[$i]['title']; ?></td>
              <td class="text-center"><?php echo $_SESSION['metadata'][$jobs[$i]['job_type']]['metadata_label']; ?></td>
              <td class="text-center"><?php echo $_SESSION['metadata'][$jobs[$i]['job_experience']]['metadata_label']; ?></td>
              <td class="text-center"><?php echo $jobs[$i]['total_views']; ?></td>
              <td class="text-center"><?php echo $jobs[$i]['total_applicants']; ?></td>
              <td class="text-right"><a href="<?php echo $root_uri.'Job/'.$jobs[$i]['job_id']; ?>">details</a></td>
            </tr>
          <?php
                  }
              } else {
          ?>
            <tr>
              <td colspan="9">You have not posted any jobs.</td>
            </tr>
          <?php
              }
          ?>
          </tbody>
        </table>
      </div>
    </div>
<?php
  require 'templates/footer.inc';
  require 'templates/html_end.inc';
?>
