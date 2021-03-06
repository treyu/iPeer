<?php
// print active courses
if (isset($course_list['A']))
{
  echo "<h2>My Courses</h2>";
  foreach ($course_list['A'] as $course)
  {
    $courseid = $course['Course']['id'];
    $coursename = $course['Course']['course'];
    $image = $html->image("icons/home.gif", array('alt' => "$coursename home"));
    $link = "/courses/home/$courseid";
    echo "<div class='course'>";
    echo $html->link("<h3>$coursename</h3>", $link, array('escape' => false));

    echo "<h4>Instructors: ";
    echo $this->element(
      'list/unordered_list_users',
      array('instructors' => $course['Instructor'])
    );
    echo "</h4>";
    echo "<table>";
    echo $this->Html->tableHeaders(
      array('Events', 'Completion Ratio', 'Due Date'));
    foreach ($course['Event'] as $event)
    {
      $eventTitle = $this->Html->link(
          $event['title'], '/evaluations/view/'.$event['id']);
      $eventReview = '';
      if ($event['to_review_count'] > 0)
      {
          $eventReview = '<br />('.sprintf(__('%d unreviewed group evaluations', true), $event['to_review_count']).')';
      }
      $eventRatio = $event['completed_count'] .' of '.
        $event['student_count'] . ' Students';
      $eventDue = Toolkit::formatDate($event['due_date']);
      echo $this->Html->tableCells(
        array($eventTitle . $eventReview, $eventRatio, $eventDue)
      );
    }
    echo "</table>";
    echo "</div>";
  }
}

// print inactive courses
if (isset($course_list['I']))
{
  echo "<h2>Inactive Courses</h2>";
  foreach ($course_list['I'] as $course)
  {
    $courseid = $course['Course']['id'];
    $coursename = $course['Course']['course'];
    echo "<div class='course'>";
    $image = $html->image("icons/home.gif", array('alt' => "$coursename home"));
    $link = "/courses/home/$courseid";
    echo $html->link("<h3>$coursename</h3>", $link, array('escape' => false));
    echo "<h4>Instructors: ";
    echo $this->element(
      'list/unordered_list_users',
      array('instructors' => $course['Instructor'])
    );
    echo "</h4>";
    echo "</div>";
  }
}

?>

<?php if (empty($course_list)):?>
    <?php echo __('You do not have any courses.') ?>
<?php endif; ?>

<div class='toggle' style="text-align:right">
<a href="#" onclick="javascript:$('short_help').toggle();return false;">
(<?php __('Short Help')?>)
</a>
</div>

<div id="short_help" <?php echo ($course_list == 0) ? '':'style="display:none"'?>>
<h5><?php __('To use iPeer you have to add a course.')?></h5>
  <ol>
    <li><?php __('Please <i>add a course</i> from the "Courses" tab above')?>
    </li>

    <li><?php __('Then <i>register students</i> into that course from that course\'s home page. This display will be available (once the course is created) by clicking on the course\'s name from most menus.')?>
    </li>

    <li><?php __('Put your students into <i>groups</i> manually, (or, if you have the students complete a survey, iPeer can do it for you, using TeamMaker).')?>
    </li>

    <li>
      <?php __('To create evaluations, check out the ')?><a href="http://ipeer.ctlt.ubc.ca/trac/wiki/UserDocV3" target="_blank">User Documentations</a>.
    </li>
  </ol>
</div>
