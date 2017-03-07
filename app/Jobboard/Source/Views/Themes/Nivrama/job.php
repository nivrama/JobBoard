<?php
  
  $this->pageTitle = $this->siteName." - Recruiter Dashboard - Job Post";

  $job = $this->data['job'];
  $params = explode('?',$_SERVER['REQUEST_URI']);
  $root_uri = rtrim($params[0],'/').'/';

  $uri = explode('/',$params[0]);
  $pattern = '/(J|j)ob\/[0-9]*/';

  require 'templates/html_start.inc';
  require 'templates/header.inc';
?>
    <div class="container body-area">
      <div class="jumbotron blog-header">
        <h1 class="blog-title">Job Post</h1>
        <h2><?php echo $job['title']; ?></h2>
      </div>
        <div class="container-fluid">
          <div class="blog-header">
          </div>
          <div class="row">
            <div class="col-sm-8 blog-main">
              <div>Reference: <?php echo !empty($job['job_reference']) ? $job['job_reference'] : '-'; ?></div>
              <div>Location: <?php
                  
                  $location = [];

                  if(!empty($job['municipality2'])) $location[] = $job['municipality2'];
                  if(!empty($job['municipality1'])) $location[] = $job['municipality1'];
                  if($job['country_id']) $location[] = $_SESSION['country'][$job['country_id']]['country_name'];

                  echo implode(', ',$location);

              ?></div>
              <div class="blog-post">
                <h3 class="blog-post-title">Job Description</h3>
                <?php echo htmlspecialchars_decode($job['job_description']); ?>
              </div>
              <div class="blog-post">
                <h3 class="blog-post-title">Official Job URL</h3>
                <?php
                  if (!empty($job['job_url'])) { ?>
                <a href="<?php echo $job['job_url']; ?>" target="_blank"><?php echo $job['job_url']; ?></a>
                <?php
                  } else { echo 'Not Available'; } ?>
              </div>
            </div>

            <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
              <div class="sidebar-module sidebar-module-inset">
                <h4>Status</h4>
                <div>Active: <?php echo $job['publish'] ? 'Yes' : 'No'; ?></div>
                <div>Views: <?php echo $job['total_views']; ?></div>
                <div>Created: <?php echo date('n/j/Y',strtotime($job['job_created'])); ?></div>
                <div>Start Date: <?php echo date('n/j/Y',strtotime($job['job_post_start'])); ?></div>
                <div>End Date: <?php echo date('n/j/Y',strtotime($job['job_post_ends'])); ?></div>
              </div>
              <div class="sidebar-module sidebar-module-inset">
                <h4>Industry</h4>
                <p><?php echo $_SESSION['industry'][$job['industry_id']]['industry_name']; ?></p>
              </div>
              <div class="sidebar-module sidebar-module-inset">
                <h4>Employment Type</h4>
                <p><?php echo $_SESSION['metadata'][$job['job_type']]['metadata_label']; ?></p>
              </div>
              <div class="sidebar-module sidebar-module-inset">
                <h4>Desired Experience</h4>
                <p><?php echo $_SESSION['metadata'][$job['job_experience']]['metadata_label']; ?></p>
              </div>
              <div class="sidebar-module sidebar-module-inset">
                <h4>Compensation</h4>
                <p>Display: <?php echo $job['compensation_show'] ? 'Yes' : 'No'; ?></p>
                <p><?php
                  $currency = $_SESSION['currency'][$job['currency_id']]['currency_symbol'];

                  echo $currency.number_format($job['compensation_start'],0,'.',',');

                  if($job['compensation_end'])
                    echo '-'.$currency.number_format($job['compensation_end'],0,'.',',');

                ?><br>Per <?php
                  echo $_SESSION['metadata'][$job['compensation_type']]['metadata_label'];
                ?></p>
              </div>
              <div class="sidebar-module">
                <h4>Desired Skills</h4>
                <ol class="list-unstyled">
                <?php
                    $skills = $job['skills'];
                    if (count($skills) > 0) {
                        for ($i=0;$i<count($skills);$i++) {
                ?>
                  <li class="label label-info"><?php echo $skills[$i]['skill_name']; ?></li>
                <?php
                        }
                    } else {
                ?>
                  <li>No skills added.</li>
                <?php
                    }
                    unset($skills);
                ?>
                </ol>
              </div>
            </div>

          </div>
        </div>

              <div class="container-fluid">
                <h3 class="blog-post-title">Applicants (<?php echo $job['total_applicants']; ?>)</h3>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th class="text-center">Date Applied</th>
                        <th class="text-center">Name</th>
                        <th class="text-center">E-mail</th>
                        <th class="text-center">Telephone</th>
                        <th class="text-center">&nbsp;</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                          $applicants = $job['applicants'];
                          if (count($applicants) > 0) {
                              for ($i=0;$i<count($applicants);$i++) {
                                $applicant = $applicants[$i];
                      ?>
                      <tr>
                        <td class="text-center"><?php echo date('n/j/y g:ia',strtotime($applicant['date_applied'])); ?></td>
                        <td class="text-center"><?php echo $applicant['seeker_fname'].' '.$applicant['seeker_lname']; ?></td>
                        <td class="text-center"><?php echo $applicant['seeker_email']; ?></td>
                        <td class="text-center"><?php

                          echo $_SESSION['country_code'][$applicant['country_code_id']]['code']
                              .$applicant['seeker_phone'];

                        ?></td>
                        <td class="text-center"><a href="<?php echo $root_uri.'Applicant/'.$applicants[$i]['seeker_id']; ?>">view</a></td>
                      </tr>
                      <?php
                              }
                              unset($applicant);
                          } else {
                      ?>
                        <tr>
                          <td colspan="5">No applicants available at this time.</td>
                        </tr>
                      <?php
                          }
                          unset($applicants);
                      ?>
                    </tbody>
                  </table>
                </div>
              </div>
              <nav>
                <ul class="pager">
                  <?php
                    if ($job['previous']) {
                  ?>
                  <li><a href="<?php
                    $prev = 'Job/'.$job['previous'];
                    $prev_url = preg_replace($pattern, $prev, $root_uri);
                    echo $prev_url;
                  ?>">Previous Job</a></li>
                  <?php
                    } if ($job['next']) {
                  ?>
                  <li><a href="<?php
                    $next = 'Job/'.$job['next'];
                    $next_url = preg_replace($pattern, $next, $root_uri);
                    echo $next_url;
                  ?>">Next Job</a></li>
                  <?php
                    }
                  ?>
                </ul>
              </nav>
            </div>

      </div>
<?php
  require 'templates/footer.inc';
  require 'templates/html_end.inc';
?>
