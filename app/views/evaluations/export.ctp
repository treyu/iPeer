<form name="frm" id="frm" method="POST" action="<?php echo $html->url('export/'.$type.'/'.$id) ?>">
<input type="hidden" name="assigned" id="assigned"/>
<table class="standardtable">
    <tr><td colspan="2" style="color:darkred; font-size:smaller"> *Please check at least one of similarly coloured fields</td></tr>
    <tr>
        <td width="50%">Export Filename:</td><td width="40%"><input type="text" name="file_name" value="<?php if(isset($file_name)) echo $file_name;?>" /></td>
    </tr>
    <tr>
        <td>Export File Type:</td>
        <td>
            <select name="export_type" class="export_type">
                <!--<option value="excel">excel</option>-->
                <option value="csv">csv</option>
            </select>
      </td>
    </tr>
    <tr>
        <td>Event Name:</td>
        <td>
            <select name="event_id" class= "event_id">
            <?php if ($fromEvent): ?>
            <option value="<?php echo $selectedEvent['Event']['id']?>"><?php echo $selectedEvent['Event']['title']?></option>
            <?php else: ?>
                <?php foreach ($events as $e): ?>
                    <option value="<?php echo $e['Event']['id']?>"><?php echo $e["Event"]["title"]?></option>
                <?php endforeach; ?>
            <?php endif; ?>
            </select>
        </td>
    </tr>
    <tr>
      <th colspan="2">Evaluation Info</th>
    </tr>
    <tr>
      <td>Include Course Name:&nbsp;<font color="red">*</td><td><input type="checkbox" name="include[course]" checked /></td>
    </tr>
    <tr>
      <td>Include Event Name:&nbsp;<font color="red">*</td><td><input type="checkbox" name="include[eval_event_names]" checked /></td>
    </tr>
    <!--<tr>
      <td>Include Date of Export:</td><td><input type="checkbox" name="include[date]" checked /></td>
    </tr>
    <tr>
      <td>Include Instructor Name:</td><td><input type="checkbox" name="include[instructors]" checked /></td>
    </tr>-->
    <tr>
      <td>Include Evaluation Type:</td><td><input type="checkbox" name="include[eval_event_type]" checked /></td>
    </tr>
    <tr>
      <th colspan="3">Group and Result</th>
    </tr>
    <tr>
      <td>Include Group Names:</td><td><input type="checkbox" name="include[group_names]" checked /></td>
    </tr>
    <tr>
      <td>Include Student Name:&nbsp;<font color="Green">*</td><td><input type="checkbox" name="include[student_name]" checked /></td>
    </tr>
    <tr>
      <td>Include Student Id:&nbsp;<font color="Green">*</td><td><input type="checkbox" name="include[student_id]" checked /></td>
    </tr>

    <tr>
        <td>Include Comments:&nbsp;<font color="orange">*</td><td><input class="csv" type="checkbox" name="include[comments]" checked /></td>
    </tr>
    <tr>
        <td>Include Grades:&nbsp;<font color="orange">*</td><td><input class="csv" type="checkbox" name="include[grade_tables]" checked /></td>
    </tr>

    <tr>
      <td>Include Final Marks:</td><td><input type="checkbox" name="include[final_marks]" checked /></td>
    </tr>

    <tr>
      <td colspan="3" align="center"><?php echo $this->Form->submit('Export', array('onClick'=>'return checkSubmit()')) ?></td>
    </tr>
</table>
</form>
<?php echo $html->script('export');
?>
<style type="text/css">
.cssDisabled { color: #aaa; }
</style>
