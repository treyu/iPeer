<table class='standardtable'>
    <tr><th><?php __('Survey Summary')?></th></tr>
    <tr>
        <td style="text-align: left;">
            <?php if( !empty($questions)):?>
            <?php foreach ($questions as $key => $row): $question = $row['Question'];?>
            <div class="survey-prompt">
                <div style="float: left">
                <?php __('Q')?><?php echo $key+1?>: <?php echo $question['prompt']?>&nbsp;
                <?php if ($is_editable):?>
                <?php echo $this->Html->link(__(' Edit', true),
                    'editQuestion/'.$question['id'].'/'.$survey_id,
                    array('class' => 'edit-button'))?>
                <?php echo $this->Html->link(__(' Delete', true),
                    'removeQuestion/'.$survey_id.'/'.$question['id'],
                    array('escape' => false, 'class' => 'delete-button'),
                    __('Are you sure to delete question', true).' &ldquo;'.$question['prompt'].'&rdquo;?')?>
                </div>
                <div style="float: right">
                <?php echo $this->Html->link(__('Top', true),
                    'moveQuestion/'.$survey_id.'/'.$question['id'].'/TOP',
                    array('escape' => false, 'class' => 'top-button small-font'))?>
                <?php echo $this->Html->link(__('Up', true),
                    'moveQuestion/'.$survey_id.'/'.$question['id'].'/UP',
                    array('escape' => false, 'class' => 'up-button small-font'))?>
                <?php echo $this->Html->link(__('Down', true),
                    'moveQuestion/'.$survey_id.'/'.$question['id'].'/DOWN',
                    array('escape' => false, 'class' => 'down-button small-font'))?>
                <?php echo $this->Html->link(__('Bottom', true),
                    'moveQuestion/'.$survey_id.'/'.$question['id'].'/BOTTOM',
                    array('escape' => false, 'class' => 'bottom-button small-font'))?>
                </div>
                <div style="clear: both;"></div>
                <?php endif;?>
            </div>
            <div class="survey-response">
                <!-- Multiple Choice Question-->
                <?php if( $question['type'] == 'M'):?>
                    <?php if( !empty($row['Response'])):?>
                        <?php foreach ($row['Response'] as $index => $value):?>
                            <input type="radio" name="answer_<?php echo $row['SurveyQuestion']['number']?>" value="<?php echo $value['id']?>" /><?php echo $value['response']?><br>
                        <?php endforeach;?>
                    <?php endif;?>
                <!-- Choose Any... Question -->
                <?php elseif( $question['type'] == 'C'):?>
                    <?php if( !empty($row['Response'])):?>
                        <?php foreach ($row['Response'] as $index => $value):?>
                            <input type="checkbox" name="answer_<?php echo $row['SurveyQuestion']['number']?>" value="<?php echo $value['id']?>" /><?php echo $value['response']?><br>
                        <?php endforeach;?>
                    <?php endif;?>
                <!-- Short Answer Question -->
                <?php elseif( $question['type'] == 'S'):?>
                    <input type="text" name="answer_<?php echo $row['SurveyQuestion']['number']?>" />
                <!--  Long Answer Question -->
                <?php elseif( $question['type'] == 'L'):?>
                    <textarea name="answer_<?php echo $row['SurveyQuestion']['number']?>"></textarea>
                <?php endif;?>
            </div>
            <?php endforeach;?>
            <?php endif;?>
        </td>
    </tr>
    <tr>
        <td>
            <?php if ($is_editable) echo '<button>'.$this->Html->link(__('Add Questions', true), 'addQuestion/'.$survey_id).'</button>'?>
            <button><?php echo $this->Html->link(__('Finish', true), 'index')?></button>
        </td>
    </tr>
</table>
