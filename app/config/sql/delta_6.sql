SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

-- Update datetime for all tables

-- Previous iPeer versions sometimes use '0000-00-00 00:00:00' for datetime
-- fields. Unfortunately, newer MySQL versions now rejects it as an invalid
-- date, so we'll just replace the all 0 datetimes with some fake but valid
-- datetime
UPDATE courses SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE courses SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE users SET last_login = '2000-01-01 00:00:00' WHERE last_login = '0000-00-00 00:00:00';
UPDATE users SET last_logout = '2000-01-01 00:00:00' WHERE last_logout = '0000-00-00 00:00:00';
UPDATE users SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE users SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE faculties SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE faculties SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE departments SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE departments SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE email_merges SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE email_merges SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE email_schedules SET `date` = '2000-01-01 00:00:00' WHERE `date` = '0000-00-00 00:00:00';
UPDATE email_schedules SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE email_templates SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE email_templates SET updated = '2000-01-01 00:00:00' WHERE updated = '0000-00-00 00:00:00';
UPDATE evaluation_mixevals SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE evaluation_mixevals SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE evaluation_mixeval_details SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE evaluation_mixeval_details SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE evaluation_rubric_details SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE evaluation_rubric_details SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE evaluation_rubrics SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE evaluation_rubrics SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE evaluation_simples SET date_submitted = '2000-01-01 00:00:00' WHERE date_submitted = '0000-00-00 00:00:00';
UPDATE evaluation_simples SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE evaluation_simples SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE evaluation_submissions SET date_submitted = '2000-01-01 00:00:00' WHERE date_submitted = '0000-00-00 00:00:00';
UPDATE evaluation_submissions SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE evaluation_submissions SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE event_template_types SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE event_template_types SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE events SET due_date = '2000-01-01 00:00:00' WHERE due_date = '0000-00-00 00:00:00';
UPDATE events SET release_date_begin = '2000-01-01 00:00:00' WHERE release_date_begin = '0000-00-00 00:00:00';
UPDATE events SET release_date_end = '2000-01-01 00:00:00' WHERE release_date_end = '0000-00-00 00:00:00';
UPDATE events SET result_release_date_begin = '2000-01-01 00:00:00' WHERE result_release_date_begin = '0000-00-00 00:00:00';
UPDATE events SET result_release_date_end = '2000-01-01 00:00:00' WHERE result_release_date_end = '0000-00-00 00:00:00';
UPDATE events SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE events SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE group_events SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE group_events SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE groups SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE groups SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE mixevals SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE mixevals SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE personalizes SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE personalizes SET updated = '2000-01-01 00:00:00' WHERE updated = '0000-00-00 00:00:00';
UPDATE roles SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE roles SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE roles_users SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE roles_users SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE rubrics SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE rubrics SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE simple_evaluations SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE simple_evaluations SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE surveys SET due_date = '2000-01-01 00:00:00' WHERE due_date = '0000-00-00 00:00:00';
UPDATE surveys SET release_date_begin = '2000-01-01 00:00:00' WHERE release_date_begin = '0000-00-00 00:00:00';
UPDATE surveys SET release_date_end = '2000-01-01 00:00:00' WHERE release_date_end = '0000-00-00 00:00:00';
UPDATE surveys SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE surveys SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE sys_parameters SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE sys_parameters SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE user_courses SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE user_courses SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE user_enrols SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE user_enrols SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';
UPDATE user_tutors SET created = '2000-01-01 00:00:00' WHERE created = '0000-00-00 00:00:00';
UPDATE user_tutors SET modified = '2000-01-01 00:00:00' WHERE modified = '0000-00-00 00:00:00';

-- Batch these updates so that they happen simulantaneously for each
-- table to get rid of the annoying effect where, e.g.: the statement fixing
-- the created column will complain about the modified column being incorrect,
-- even though the very next statement fixes the modified column.
ALTER TABLE courses MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE users MODIFY created datetime, MODIFY modified datetime, MODIFY last_login datetime, MODIFY last_logout datetime;
ALTER TABLE faculties MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE departments MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE email_merges MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE email_schedules MODIFY `date` datetime, MODIFY created datetime;
ALTER TABLE email_templates MODIFY created datetime, MODIFY updated datetime;
ALTER TABLE evaluation_mixevals MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE evaluation_mixeval_details MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE evaluation_rubric_details MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE evaluation_rubrics MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE evaluation_simples MODIFY date_submitted datetime, MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE evaluation_submissions MODIFY created datetime, MODIFY modified datetime, MODIFY date_submitted datetime;
ALTER TABLE event_template_types MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE events MODIFY created datetime, MODIFY modified datetime, MODIFY due_date datetime, MODIFY release_date_begin datetime, MODIFY release_date_end datetime, MODIFY result_release_date_begin datetime, MODIFY result_release_date_end datetime;
ALTER TABLE group_events MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE groups MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE mixevals MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE personalizes MODIFY created datetime, MODIFY updated datetime;
ALTER TABLE roles MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE roles_users MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE rubrics MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE simple_evaluations MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE surveys MODIFY due_date datetime, MODIFY release_date_begin datetime, MODIFY release_date_end datetime, MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE sys_parameters MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE user_courses MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE user_enrols MODIFY created datetime, MODIFY modified datetime;
ALTER TABLE user_tutors MODIFY created datetime, MODIFY modified datetime;

-- Missed one table's char set conversion during the last upgrade
-- Do this here or MySQL will complain about invalid dates.
ALTER TABLE sys_parameters CHARACTER SET utf8;

-- Convert all old table columns to utf8
-- While the iPeer 3.0 upgrader did update the table character set to utf8, it
-- turns out that there's an extra step necessary to finish the utf8
-- conversion: Pre-existing columns in the table have to be manually converted
-- to utf8 individually.
-- Have to convert to binary and then the right column data-type due to some
-- MySQL estorica in character set conversion.
-- More info: http://codex.wordpress.org/Converting_Database_Character_Sets

ALTER TABLE courses CHANGE course course VARBINARY(80);
ALTER TABLE courses CHANGE course course VARCHAR(80) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE courses CHANGE title title VARBINARY(80);
ALTER TABLE courses CHANGE title title VARCHAR(80) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE courses CHANGE homepage homepage VARBINARY(100);
ALTER TABLE courses CHANGE homepage homepage VARCHAR(100) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE courses CHANGE password password VARBINARY(25);
ALTER TABLE courses CHANGE password password VARCHAR(25) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE evaluation_mixevals CHANGE record_status record_status BINARY(1);
ALTER TABLE evaluation_mixevals CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE evaluation_mixeval_details CHANGE question_comment question_comment BLOB;
ALTER TABLE evaluation_mixeval_details CHANGE question_comment question_comment TEXT CHARACTER SET utf8;
ALTER TABLE evaluation_mixeval_details CHANGE record_status record_status BINARY(1);
ALTER TABLE evaluation_mixeval_details CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE evaluation_rubrics CHANGE record_status record_status BINARY(1);
ALTER TABLE evaluation_rubrics CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE evaluation_rubric_details CHANGE criteria_comment criteria_comment VARBINARY(255);
ALTER TABLE evaluation_rubric_details CHANGE criteria_comment criteria_comment VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE evaluation_rubric_details CHANGE record_status record_status BINARY(1);
ALTER TABLE evaluation_rubric_details CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE evaluation_simples CHANGE record_status record_status BINARY(1);
ALTER TABLE evaluation_simples CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE evaluation_submissions CHANGE record_status record_status BINARY(1);
ALTER TABLE evaluation_submissions CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE events CHANGE title title VARBINARY(255);
ALTER TABLE events CHANGE title title VARCHAR(255) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE events CHANGE description description VARBINARY(255);
ALTER TABLE events CHANGE description description TEXT CHARACTER SET utf8;
ALTER TABLE events CHANGE self_eval self_eval VARBINARY(11);
ALTER TABLE events CHANGE self_eval self_eval VARCHAR(11) CHARACTER SET utf8 NOT NULL DEFAULT '0';
ALTER TABLE events CHANGE record_status record_status BINARY(1);
ALTER TABLE events CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE event_template_types CHANGE type_name type_name VARBINARY(50);
ALTER TABLE event_template_types CHANGE type_name type_name VARCHAR(50) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE event_template_types CHANGE table_name table_name VARBINARY(50);
ALTER TABLE event_template_types CHANGE table_name table_name VARCHAR(50) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE event_template_types CHANGE model_name model_name VARBINARY(80);
ALTER TABLE event_template_types CHANGE model_name model_name VARCHAR(80) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE event_template_types CHANGE record_status record_status BINARY(1);
ALTER TABLE event_template_types CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE groups CHANGE group_name group_name VARBINARY(80);
ALTER TABLE groups CHANGE group_name group_name VARCHAR(80) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE group_events CHANGE grade_release_status grade_release_status VARBINARY(20);
ALTER TABLE group_events CHANGE grade_release_status grade_release_status VARCHAR(20) CHARACTER SET utf8 NOT NULL DEFAULT 'None';
ALTER TABLE group_events CHANGE comment_release_status comment_release_status VARBINARY(20);
ALTER TABLE group_events CHANGE comment_release_status comment_release_status VARCHAR(20) CHARACTER SET utf8 NOT NULL DEFAULT 'None';
ALTER TABLE group_events CHANGE record_status record_status BINARY(1);
ALTER TABLE group_events CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE mixevals CHANGE name name VARBINARY(80);
ALTER TABLE mixevals CHANGE name name VARCHAR(80) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE mixevals_questions CHANGE title title BLOB;
ALTER TABLE mixevals_questions CHANGE title title TEXT CHARACTER SET utf8;
ALTER TABLE mixevals_questions CHANGE instructions instructions BLOB;
ALTER TABLE mixevals_questions CHANGE instructions instructions TEXT CHARACTER SET utf8;
ALTER TABLE mixevals_question_descs CHANGE descriptor descriptor VARBINARY(255);
ALTER TABLE mixevals_question_descs CHANGE descriptor descriptor VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE personalizes CHANGE attribute_code attribute_code VARBINARY(80);
ALTER TABLE personalizes CHANGE attribute_code attribute_code VARCHAR(80) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE personalizes CHANGE attribute_value attribute_value VARBINARY(80);
ALTER TABLE personalizes CHANGE attribute_value attribute_value VARCHAR(80) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE questions CHANGE prompt prompt VARBINARY(255);
ALTER TABLE questions CHANGE prompt prompt VARCHAR(255) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE responses CHANGE response response BLOB;
ALTER TABLE responses CHANGE response response TEXT CHARACTER SET utf8 NOT NULL;
ALTER TABLE rubrics CHANGE name name VARBINARY(80);
ALTER TABLE rubrics CHANGE name name VARCHAR(80) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE rubrics_criterias CHANGE criteria criteria VARBINARY(255);
ALTER TABLE rubrics_criterias CHANGE criteria criteria VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE rubrics_criteria_comments CHANGE criteria_comment criteria_comment VARBINARY(255);
ALTER TABLE rubrics_criteria_comments CHANGE criteria_comment criteria_comment VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE rubrics_loms CHANGE lom_comment lom_comment VARBINARY(255);
ALTER TABLE rubrics_loms CHANGE lom_comment lom_comment VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE simple_evaluations CHANGE name name VARBINARY(50);
ALTER TABLE simple_evaluations CHANGE name name VARCHAR(50) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE simple_evaluations CHANGE description description BLOB;
ALTER TABLE simple_evaluations CHANGE description description TEXT CHARACTER SET utf8 NOT NULL;
ALTER TABLE simple_evaluations CHANGE record_status record_status BINARY(1);
ALTER TABLE simple_evaluations CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE survey_group_sets CHANGE set_description set_description BLOB;
ALTER TABLE survey_group_sets CHANGE set_description set_description TEXT CHARACTER SET utf8 NOT NULL;
ALTER TABLE survey_inputs CHANGE response_text response_text BLOB;
ALTER TABLE survey_inputs CHANGE response_text response_text TEXT CHARACTER SET utf8;
ALTER TABLE users CHANGE username username VARBINARY(80);
ALTER TABLE users CHANGE username username VARCHAR(80) CHARACTER SET utf8 NOT NULL; 
ALTER TABLE users CHANGE password password VARBINARY(80);
ALTER TABLE users CHANGE password password VARCHAR(80) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE users CHANGE first_name first_name VARBINARY(80);
ALTER TABLE users CHANGE first_name first_name VARCHAR(80) CHARACTER SET utf8 DEFAULT '';
ALTER TABLE users CHANGE last_name last_name VARBINARY(80);
ALTER TABLE users CHANGE last_name last_name VARCHAR(80) CHARACTER SET utf8 DEFAULT '';
ALTER TABLE users CHANGE student_no student_no VARBINARY(30);
ALTER TABLE users CHANGE student_no student_no VARCHAR(30) CHARACTER SET utf8 DEFAULT '';
ALTER TABLE users CHANGE title title VARBINARY(80);
ALTER TABLE users CHANGE title title VARCHAR(80) CHARACTER SET utf8 DEFAULT '';
ALTER TABLE users CHANGE email email VARBINARY(80);
-- note increase in character limit for emails
ALTER TABLE users CHANGE email email VARCHAR(254) CHARACTER SET utf8 DEFAULT '';
ALTER TABLE users CHANGE last_accessed last_accessed VARBINARY(10);
ALTER TABLE users CHANGE last_accessed last_accessed VARCHAR(10) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE users CHANGE record_status record_status BINARY(1);
ALTER TABLE users CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';
ALTER TABLE sys_parameters CHANGE parameter_code parameter_code VARBINARY(80);
ALTER TABLE sys_parameters CHANGE parameter_code parameter_code VARCHAR(80) CHARACTER SET utf8 NOT NULL;
ALTER TABLE sys_parameters CHANGE parameter_value parameter_value BLOB;
ALTER TABLE sys_parameters CHANGE parameter_value parameter_value TEXT CHARACTER SET utf8;
ALTER TABLE sys_parameters CHANGE parameter_type parameter_type BINARY(1);
ALTER TABLE sys_parameters CHANGE parameter_type parameter_type CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT '';
ALTER TABLE sys_parameters CHANGE description description VARBINARY(255);
ALTER TABLE sys_parameters CHANGE description description VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL;
ALTER TABLE sys_parameters CHANGE record_status record_status BINARY(1);
ALTER TABLE sys_parameters CHANGE record_status record_status CHAR(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A';


-- Database structure changes

ALTER TABLE courses DROP instructor_id;

ALTER TABLE email_schedules MODIFY `to` text NOT NULL;

ALTER TABLE events ADD `auto_release` int(11) NOT NULL DEFAULT 0;
ALTER TABLE events ADD `enable_details` int(11) NOT NULL DEFAULT '1';

ALTER TABLE groups_members ADD UNIQUE KEY `group_user` (`group_id`, `user_id`);

ALTER TABLE mixevals DROP total_question;
ALTER TABLE mixevals DROP lickert_question_max;
ALTER TABLE mixevals DROP scale_max;
ALTER TABLE mixevals DROP prefill_question_max;

CREATE TABLE IF NOT EXISTS `mixeval_question_types` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`type` varchar(255) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

INSERT INTO `mixeval_question_types` (`id`, `type`) VALUES
(1, 'Likert'),
(2, 'Paragraph'),
(3, 'Sentence');

ALTER TABLE mixevals_questions RENAME mixeval_questions;
ALTER TABLE mixeval_questions ADD mixeval_question_type_id int(11) NOT NULL;
ALTER TABLE mixeval_questions ADD FOREIGN KEY (`mixeval_question_type_id`) 
	REFERENCES `mixeval_question_types` (`id`) ON DELETE CASCADE;
ALTER TABLE mixeval_questions ADD FOREIGN KEY (`mixeval_id`) REFERENCES 
	`mixevals` (`id`) ON DELETE CASCADE;
UPDATE mixeval_questions SET mixeval_question_type_id = 1 WHERE question_type = 'S';
UPDATE mixeval_questions SET mixeval_question_type_id = 2 WHERE question_type = 'T' AND response_type = 'L';
UPDATE mixeval_questions SET mixeval_question_type_id = 3 WHERE question_type = 'T' AND response_type = 'S';
ALTER TABLE mixeval_questions DROP question_type;
ALTER TABLE mixeval_questions DROP response_type;

ALTER TABLE mixevals_question_descs RENAME mixeval_question_descs;
ALTER TABLE mixeval_question_descs ADD FOREIGN KEY (`question_id`) REFERENCES 
	`mixeval_questions` (`id`) ON DELETE CASCADE;

ALTER TABLE survey_inputs DROP sub_id;
ALTER TABLE survey_inputs DROP chkbx_id;

ALTER TABLE surveys DROP course_id;
ALTER TABLE surveys DROP user_id;

DELETE FROM sys_parameters WHERE parameter_code = 'system.domain';
DELETE FROM sys_parameters WHERE parameter_code = 'system.upload_dir';
DELETE FROM sys_parameters WHERE parameter_code = 'system.password_reset_mail';
DELETE FROM sys_parameters WHERE parameter_code = 'system.password_reset_emailsubject';
DELETE FROM sys_parameters WHERE parameter_code = 'system.soft_delete_enable';
DELETE FROM sys_parameters WHERE parameter_code = 'system.debug_mode';
DELETE FROM sys_parameters WHERE parameter_code = 'system.debug_verbosity';
DELETE FROM sys_parameters WHERE parameter_code = 'system.absolute_url';
DELETE FROM sys_parameters WHERE parameter_code = 'display.page_title';
DELETE FROM sys_parameters WHERE parameter_code = 'display.logo_file';
DELETE FROM sys_parameters WHERE parameter_code = 'display.login_logo_file';
DELETE FROM sys_parameters WHERE parameter_code = 'display.login_text';
DELETE FROM sys_parameters WHERE parameter_code = 'display.vocabulary.department';
DELETE FROM sys_parameters WHERE parameter_code = 'custom.login_control';
DELETE FROM sys_parameters WHERE parameter_code = 'custom.login_page_pathname';

ALTER TABLE rubrics_criteria_comments modify criteria_id int(11) NOT NULL;

-- Should be fine to completely recreate the ACL completely from scratch

DROP TABLE IF EXISTS `acos`;
CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO acos (id, parent_id, model, foreign_key, alias, lft, rght) VALUES
(1, NULL, NULL, NULL, 'adminpage', 1, 2),
(2, NULL, NULL, NULL, 'controllers', 3, 598),
(3, 2, NULL, NULL, 'Pages', 4, 17),
(4, 3, NULL, NULL, 'display', 5, 6),
(5, 3, NULL, NULL, 'add', 7, 8),
(6, 3, NULL, NULL, 'edit', 9, 10),
(7, 3, NULL, NULL, 'index', 11, 12),
(8, 3, NULL, NULL, 'view', 13, 14),
(9, 3, NULL, NULL, 'delete', 15, 16),
(10, 2, NULL, NULL, 'Accesses', 18, 29),
(11, 10, NULL, NULL, 'view', 19, 20),
(12, 10, NULL, NULL, 'edit', 21, 22),
(13, 10, NULL, NULL, 'add', 23, 24),
(14, 10, NULL, NULL, 'index', 25, 26),
(15, 10, NULL, NULL, 'delete', 27, 28),
(16, 2, NULL, NULL, 'Courses', 30, 53),
(17, 16, NULL, NULL, 'daysLate', 31, 32),
(18, 16, NULL, NULL, 'index', 33, 34),
(19, 16, NULL, NULL, 'ajaxList', 35, 36),
(20, 16, NULL, NULL, 'view', 37, 38),
(21, 16, NULL, NULL, 'home', 39, 40),
(22, 16, NULL, NULL, 'add', 41, 42),
(23, 16, NULL, NULL, 'edit', 43, 44),
(24, 16, NULL, NULL, 'delete', 45, 46),
(25, 16, NULL, NULL, 'move', 47, 48),
(26, 16, NULL, NULL, 'ajax_options', 49, 50),
(27, 16, NULL, NULL, 'import', 51, 52),
(28, 2, NULL, NULL, 'Departments', 54, 65),
(29, 28, NULL, NULL, 'index', 55, 56),
(30, 28, NULL, NULL, 'view', 57, 58),
(31, 28, NULL, NULL, 'add', 59, 60),
(32, 28, NULL, NULL, 'edit', 61, 62),
(33, 28, NULL, NULL, 'delete', 63, 64),
(34, 2, NULL, NULL, 'Emailer', 66, 93),
(35, 34, NULL, NULL, 'setUpAjaxList', 67, 68),
(36, 34, NULL, NULL, 'ajaxList', 69, 70),
(37, 34, NULL, NULL, 'index', 71, 72),
(38, 34, NULL, NULL, 'write', 73, 74),
(39, 34, NULL, NULL, 'cancel', 75, 76),
(40, 34, NULL, NULL, 'view', 77, 78),
(41, 34, NULL, NULL, 'addRecipient', 79, 80),
(42, 34, NULL, NULL, 'deleteRecipient', 81, 82),
(43, 34, NULL, NULL, 'getRecipient', 83, 84),
(44, 34, NULL, NULL, 'searchByUserId', 85, 86),
(45, 34, NULL, NULL, 'add', 87, 88),
(46, 34, NULL, NULL, 'edit', 89, 90),
(47, 34, NULL, NULL, 'delete', 91, 92),
(48, 2, NULL, NULL, 'Emailtemplates', 94, 113),
(49, 48, NULL, NULL, 'setUpAjaxList', 95, 96),
(50, 48, NULL, NULL, 'ajaxList', 97, 98),
(51, 48, NULL, NULL, 'index', 99, 100),
(52, 48, NULL, NULL, 'add', 101, 102),
(53, 48, NULL, NULL, 'edit', 103, 104),
(54, 48, NULL, NULL, 'delete', 105, 106),
(55, 48, NULL, NULL, 'view', 107, 108),
(56, 48, NULL, NULL, 'displayTemplateContent', 109, 110),
(57, 48, NULL, NULL, 'displayTemplateSubject', 111, 112),
(58, 2, NULL, NULL, 'Evaltools', 114, 125),
(59, 58, NULL, NULL, 'index', 115, 116),
(60, 58, NULL, NULL, 'add', 117, 118),
(61, 58, NULL, NULL, 'edit', 119, 120),
(62, 58, NULL, NULL, 'view', 121, 122),
(63, 58, NULL, NULL, 'delete', 123, 124),
(64, 2, NULL, NULL, 'Evaluations', 126, 173),
(65, 64, NULL, NULL, 'setUpAjaxList', 127, 128),
(66, 64, NULL, NULL, 'ajaxList', 129, 130),
(67, 64, NULL, NULL, 'view', 131, 132),
(68, 64, NULL, NULL, 'index', 133, 134),
(69, 64, NULL, NULL, 'export', 135, 136),
(70, 64, NULL, NULL, 'makeEvaluation', 137, 138),
(71, 64, NULL, NULL, 'validRubricEvalComplete', 139, 140),
(72, 64, NULL, NULL, 'completeEvaluationRubric', 141, 142),
(73, 64, NULL, NULL, 'validMixevalEvalComplete', 143, 144),
(74, 64, NULL, NULL, 'viewEvaluationResults', 145, 146),
(75, 64, NULL, NULL, 'studentViewEvaluationResult', 147, 148),
(76, 64, NULL, NULL, 'markEventReviewed', 149, 150),
(77, 64, NULL, NULL, 'markGradeRelease', 151, 152),
(78, 64, NULL, NULL, 'markCommentRelease', 153, 154),
(79, 64, NULL, NULL, 'changeAllCommentRelease', 155, 156),
(80, 64, NULL, NULL, 'changeAllGradeRelease', 157, 158),
(81, 64, NULL, NULL, 'viewGroupSubmissionDetails', 159, 160),
(82, 64, NULL, NULL, 'viewSurveySummary', 161, 162),
(83, 64, NULL, NULL, 'export_rubic', 163, 164),
(84, 64, NULL, NULL, 'export_test', 165, 166),
(85, 64, NULL, NULL, 'add', 167, 168),
(86, 64, NULL, NULL, 'edit', 169, 170),
(87, 64, NULL, NULL, 'delete', 171, 172),
(88, 2, NULL, NULL, 'Events', 174, 203),
(89, 88, NULL, NULL, 'postProcessData', 175, 176),
(90, 88, NULL, NULL, 'setUpAjaxList', 177, 178),
(91, 88, NULL, NULL, 'index', 179, 180),
(92, 88, NULL, NULL, 'ajaxList', 181, 182),
(93, 88, NULL, NULL, 'view', 183, 184),
(94, 88, NULL, NULL, 'add', 185, 186),
(95, 88, NULL, NULL, 'setSchedule', 187, 188),
(96, 88, NULL, NULL, 'getGroupMembers', 189, 190),
(97, 88, NULL, NULL, 'edit', 191, 192),
(98, 88, NULL, NULL, 'checkIfChanged', 193, 194),
(99, 88, NULL, NULL, 'calculateFrequency', 195, 196),
(100, 88, NULL, NULL, 'modifySchedule', 197, 198),
(101, 88, NULL, NULL, 'delete', 199, 200),
(102, 88, NULL, NULL, 'checkDuplicateName', 201, 202),
(103, 2, NULL, NULL, 'Faculties', 204, 215),
(104, 103, NULL, NULL, 'index', 205, 206),
(105, 103, NULL, NULL, 'view', 207, 208),
(106, 103, NULL, NULL, 'add', 209, 210),
(107, 103, NULL, NULL, 'edit', 211, 212),
(108, 103, NULL, NULL, 'delete', 213, 214),
(109, 2, NULL, NULL, 'Framework', 216, 231),
(110, 109, NULL, NULL, 'calendarDisplay', 217, 218),
(111, 109, NULL, NULL, 'tutIndex', 219, 220),
(112, 109, NULL, NULL, 'add', 221, 222),
(113, 109, NULL, NULL, 'edit', 223, 224),
(114, 109, NULL, NULL, 'index', 225, 226),
(115, 109, NULL, NULL, 'view', 227, 228),
(116, 109, NULL, NULL, 'delete', 229, 230),
(117, 2, NULL, NULL, 'Groups', 232, 251),
(118, 117, NULL, NULL, 'setUpAjaxList', 233, 234),
(119, 117, NULL, NULL, 'index', 235, 236),
(120, 117, NULL, NULL, 'ajaxList', 237, 238),
(121, 117, NULL, NULL, 'view', 239, 240),
(122, 117, NULL, NULL, 'add', 241, 242),
(123, 117, NULL, NULL, 'edit', 243, 244),
(124, 117, NULL, NULL, 'delete', 245, 246),
(125, 117, NULL, NULL, 'import', 247, 248),
(126, 117, NULL, NULL, 'export', 249, 250),
(127, 2, NULL, NULL, 'Home', 252, 263),
(128, 127, NULL, NULL, 'index', 253, 254),
(129, 127, NULL, NULL, 'add', 255, 256),
(130, 127, NULL, NULL, 'edit', 257, 258),
(131, 127, NULL, NULL, 'view', 259, 260),
(132, 127, NULL, NULL, 'delete', 261, 262),
(133, 2, NULL, NULL, 'Install', 264, 285),
(134, 133, NULL, NULL, 'index', 265, 266),
(135, 133, NULL, NULL, 'install2', 267, 268),
(136, 133, NULL, NULL, 'install3', 269, 270),
(137, 133, NULL, NULL, 'install4', 271, 272),
(138, 133, NULL, NULL, 'install5', 273, 274),
(139, 133, NULL, NULL, 'gpl', 275, 276),
(140, 133, NULL, NULL, 'add', 277, 278),
(141, 133, NULL, NULL, 'edit', 279, 280),
(142, 133, NULL, NULL, 'view', 281, 282),
(143, 133, NULL, NULL, 'delete', 283, 284),
(144, 2, NULL, NULL, 'Lti', 286, 297),
(145, 144, NULL, NULL, 'index', 287, 288),
(146, 144, NULL, NULL, 'add', 289, 290),
(147, 144, NULL, NULL, 'edit', 291, 292),
(148, 144, NULL, NULL, 'view', 293, 294),
(149, 144, NULL, NULL, 'delete', 295, 296),
(150, 2, NULL, NULL, 'Mixevals', 298, 315),
(151, 150, NULL, NULL, 'setUpAjaxList', 299, 300),
(152, 150, NULL, NULL, 'index', 301, 302),
(153, 150, NULL, NULL, 'ajaxList', 303, 304),
(154, 150, NULL, NULL, 'view', 305, 306),
(155, 150, NULL, NULL, 'add', 307, 308),
(156, 150, NULL, NULL, 'edit', 309, 310),
(157, 150, NULL, NULL, 'copy', 311, 312),
(158, 150, NULL, NULL, 'delete', 313, 314),
(159, 2, NULL, NULL, 'Oauthclients', 316, 327),
(160, 159, NULL, NULL, 'index', 317, 318),
(161, 159, NULL, NULL, 'add', 319, 320),
(162, 159, NULL, NULL, 'edit', 321, 322),
(163, 159, NULL, NULL, 'delete', 323, 324),
(164, 159, NULL, NULL, 'view', 325, 326),
(165, 2, NULL, NULL, 'Oauthtokens', 328, 339),
(166, 165, NULL, NULL, 'index', 329, 330),
(167, 165, NULL, NULL, 'add', 331, 332),
(168, 165, NULL, NULL, 'edit', 333, 334),
(169, 165, NULL, NULL, 'delete', 335, 336),
(170, 165, NULL, NULL, 'view', 337, 338),
(171, 2, NULL, NULL, 'Penalty', 340, 353),
(172, 171, NULL, NULL, 'save', 341, 342),
(173, 171, NULL, NULL, 'add', 343, 344),
(174, 171, NULL, NULL, 'edit', 345, 346),
(175, 171, NULL, NULL, 'index', 347, 348),
(176, 171, NULL, NULL, 'view', 349, 350),
(177, 171, NULL, NULL, 'delete', 351, 352),
(178, 2, NULL, NULL, 'Rubrics', 354, 373),
(179, 178, NULL, NULL, 'postProcess', 355, 356),
(180, 178, NULL, NULL, 'setUpAjaxList', 357, 358),
(181, 178, NULL, NULL, 'index', 359, 360),
(182, 178, NULL, NULL, 'ajaxList', 361, 362),
(183, 178, NULL, NULL, 'view', 363, 364),
(184, 178, NULL, NULL, 'add', 365, 366),
(185, 178, NULL, NULL, 'edit', 367, 368),
(186, 178, NULL, NULL, 'copy', 369, 370),
(187, 178, NULL, NULL, 'delete', 371, 372),
(188, 2, NULL, NULL, 'Searchs', 374, 401),
(189, 188, NULL, NULL, 'update', 375, 376),
(190, 188, NULL, NULL, 'index', 377, 378),
(191, 188, NULL, NULL, 'searchEvaluation', 379, 380),
(192, 188, NULL, NULL, 'searchResult', 381, 382),
(193, 188, NULL, NULL, 'searchInstructor', 383, 384),
(194, 188, NULL, NULL, 'eventBoxSearch', 385, 386),
(195, 188, NULL, NULL, 'formatSearchEvaluation', 387, 388),
(196, 188, NULL, NULL, 'formatSearchInstructor', 389, 390),
(197, 188, NULL, NULL, 'formatSearchEvaluationResult', 391, 392),
(198, 188, NULL, NULL, 'add', 393, 394),
(199, 188, NULL, NULL, 'edit', 395, 396),
(200, 188, NULL, NULL, 'view', 397, 398),
(201, 188, NULL, NULL, 'delete', 399, 400),
(202, 2, NULL, NULL, 'Simpleevaluations', 402, 421),
(203, 202, NULL, NULL, 'postProcess', 403, 404),
(204, 202, NULL, NULL, 'setUpAjaxList', 405, 406),
(205, 202, NULL, NULL, 'index', 407, 408),
(206, 202, NULL, NULL, 'ajaxList', 409, 410),
(207, 202, NULL, NULL, 'view', 411, 412),
(208, 202, NULL, NULL, 'add', 413, 414),
(209, 202, NULL, NULL, 'edit', 415, 416),
(210, 202, NULL, NULL, 'copy', 417, 418),
(211, 202, NULL, NULL, 'delete', 419, 420),
(212, 2, NULL, NULL, 'Surveygroups', 422, 451),
(213, 212, NULL, NULL, 'postProcess', 423, 424),
(214, 212, NULL, NULL, 'setUpAjaxList', 425, 426),
(215, 212, NULL, NULL, 'index', 427, 428),
(216, 212, NULL, NULL, 'ajaxList', 429, 430),
(217, 212, NULL, NULL, 'makegroups', 431, 432),
(218, 212, NULL, NULL, 'makegroupssearch', 433, 434),
(219, 212, NULL, NULL, 'maketmgroups', 435, 436),
(220, 212, NULL, NULL, 'savegroups', 437, 438),
(221, 212, NULL, NULL, 'release', 439, 440),
(222, 212, NULL, NULL, 'delete', 441, 442),
(223, 212, NULL, NULL, 'edit', 443, 444),
(224, 212, NULL, NULL, 'changegroupset', 445, 446),
(225, 212, NULL, NULL, 'add', 447, 448),
(226, 212, NULL, NULL, 'view', 449, 450),
(227, 2, NULL, NULL, 'Surveys', 452, 479),
(228, 227, NULL, NULL, 'setUpAjaxList', 453, 454),
(229, 227, NULL, NULL, 'index', 455, 456),
(230, 227, NULL, NULL, 'ajaxList', 457, 458),
(231, 227, NULL, NULL, 'view', 459, 460),
(232, 227, NULL, NULL, 'add', 461, 462),
(233, 227, NULL, NULL, 'edit', 463, 464),
(234, 227, NULL, NULL, 'copy', 465, 466),
(235, 227, NULL, NULL, 'delete', 467, 468),
(236, 227, NULL, NULL, 'questionsSummary', 469, 470),
(237, 227, NULL, NULL, 'moveQuestion', 471, 472),
(238, 227, NULL, NULL, 'removeQuestion', 473, 474),
(239, 227, NULL, NULL, 'addQuestion', 475, 476),
(240, 227, NULL, NULL, 'editQuestion', 477, 478),
(241, 2, NULL, NULL, 'Sysparameters', 480, 495),
(242, 241, NULL, NULL, 'setUpAjaxList', 481, 482),
(243, 241, NULL, NULL, 'index', 483, 484),
(244, 241, NULL, NULL, 'ajaxList', 485, 486),
(245, 241, NULL, NULL, 'view', 487, 488),
(246, 241, NULL, NULL, 'add', 489, 490),
(247, 241, NULL, NULL, 'edit', 491, 492),
(248, 241, NULL, NULL, 'delete', 493, 494),
(249, 2, NULL, NULL, 'Upgrade', 496, 509),
(250, 249, NULL, NULL, 'index', 497, 498),
(251, 249, NULL, NULL, 'step2', 499, 500),
(252, 249, NULL, NULL, 'add', 501, 502),
(253, 249, NULL, NULL, 'edit', 503, 504),
(254, 249, NULL, NULL, 'view', 505, 506),
(255, 249, NULL, NULL, 'delete', 507, 508),
(256, 2, NULL, NULL, 'Users', 510, 543),
(257, 256, NULL, NULL, 'ajaxList', 511, 512),
(258, 256, NULL, NULL, 'index', 513, 514),
(259, 256, NULL, NULL, 'goToClassList', 515, 516),
(260, 256, NULL, NULL, 'determineIfStudentFromThisData', 517, 518),
(261, 256, NULL, NULL, 'view', 519, 520),
(262, 256, NULL, NULL, 'add', 521, 522),
(263, 256, NULL, NULL, 'enrol', 523, 524),
(264, 256, NULL, NULL, 'edit', 525, 526),
(265, 256, NULL, NULL, 'editProfile', 527, 528),
(266, 256, NULL, NULL, 'delete', 529, 530),
(267, 256, NULL, NULL, 'checkDuplicateName', 531, 532),
(268, 256, NULL, NULL, 'resetPassword', 533, 534),
(269, 256, NULL, NULL, 'import', 535, 536),
(270, 256, NULL, NULL, 'merge', 537, 538),
(271, 256, NULL, NULL, 'ajax_merge', 539, 540),
(272, 256, NULL, NULL, 'update', 541, 542),
(273, 2, NULL, NULL, 'V1', 544, 579),
(274, 273, NULL, NULL, 'oauth', 545, 546),
(275, 273, NULL, NULL, 'oauth_error', 547, 548),
(276, 273, NULL, NULL, 'users', 549, 550),
(277, 273, NULL, NULL, 'courses', 551, 552),
(278, 273, NULL, NULL, 'groups', 553, 554),
(279, 273, NULL, NULL, 'groupMembers', 555, 556),
(280, 273, NULL, NULL, 'events', 557, 558),
(281, 273, NULL, NULL, 'grades', 559, 560),
(282, 273, NULL, NULL, 'departments', 561, 562),
(283, 273, NULL, NULL, 'courseDepartments', 563, 564),
(284, 273, NULL, NULL, 'userEvents', 565, 566),
(285, 273, NULL, NULL, 'enrolment', 567, 568),
(286, 273, NULL, NULL, 'add', 569, 570),
(287, 273, NULL, NULL, 'edit', 571, 572),
(288, 273, NULL, NULL, 'index', 573, 574),
(289, 273, NULL, NULL, 'view', 575, 576),
(290, 273, NULL, NULL, 'delete', 577, 578),
(291, 2, NULL, NULL, 'Guard', 580, 597),
(292, 291, NULL, NULL, 'Guard', 581, 596),
(293, 292, NULL, NULL, 'login', 582, 583),
(294, 292, NULL, NULL, 'logout', 584, 585),
(295, 292, NULL, NULL, 'add', 586, 587),
(296, 292, NULL, NULL, 'edit', 588, 589),
(297, 292, NULL, NULL, 'index', 590, 591),
(298, 292, NULL, NULL, 'view', 592, 593),
(299, 292, NULL, NULL, 'delete', 594, 595),
(300, NULL, NULL, NULL, 'functions', 599, 662),
(301, 300, NULL, NULL, 'user', 600, 627),
(302, 301, NULL, NULL, 'superadmin', 601, 602),
(303, 301, NULL, NULL, 'admin', 603, 604),
(304, 301, NULL, NULL, 'instructor', 605, 606),
(305, 301, NULL, NULL, 'tutor', 607, 608),
(306, 301, NULL, NULL, 'student', 609, 610),
(307, 301, NULL, NULL, 'import', 611, 612),
(308, 301, NULL, NULL, 'password_reset', 613, 624),
(309, 308, NULL, NULL, 'superadmin', 614, 615),
(310, 308, NULL, NULL, 'admin', 616, 617),
(311, 308, NULL, NULL, 'instructor', 618, 619),
(312, 308, NULL, NULL, 'tutor', 620, 621),
(313, 308, NULL, NULL, 'student', 622, 623),
(314, 301, NULL, NULL, 'index', 625, 626),
(315, 300, NULL, NULL, 'role', 628, 639),
(316, 315, NULL, NULL, 'superadmin', 629, 630),
(317, 315, NULL, NULL, 'admin', 631, 632),
(318, 315, NULL, NULL, 'instructor', 633, 634),
(319, 315, NULL, NULL, 'tutor', 635, 636),
(320, 315, NULL, NULL, 'student', 637, 638),
(321, 300, NULL, NULL, 'evaluation', 640, 641),
(322, 300, NULL, NULL, 'email', 642, 649),
(323, 322, NULL, NULL, 'allUsers', 643, 644),
(324, 322, NULL, NULL, 'allGroups', 645, 646),
(325, 322, NULL, NULL, 'allCourses', 647, 648),
(326, 300, NULL, NULL, 'emailtemplate', 650, 651),
(327, 300, NULL, NULL, 'viewstudentresults', 652, 653),
(328, 300, NULL, NULL, 'viewemailaddresses', 654, 655),
(329, 300, NULL, NULL, 'superadmin', 656, 657),
(330, 300, NULL, NULL, 'coursemanager', 658, 659),
(331, 300, NULL, NULL, 'viewusername', 660, 661);

DROP TABLE IF EXISTS `aros`;
CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, NULL, 1, 2),
(2, NULL, 'Role', 2, NULL, 3, 4),
(3, NULL, 'Role', 3, NULL, 5, 6),
(4, NULL, 'Role', 4, NULL, 7, 8),
(5, NULL, 'Role', 5, NULL, 9, 10);

DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO aros_acos (id, aro_id, aco_id, _create, _read, _update, _delete) VALUES
(1, 1, 2, '1', '1', '1', '1'),
(2, 1, 300, '1', '1', '1', '1'),
(3, 1, 1, '1', '1', '1', '1'),
(4, 2, 2, '-1', '-1', '-1', '-1'),
(5, 2, 127, '1', '1', '1', '1'),
(6, 2, 16, '1', '1', '1', '1'),
(7, 2, 28, '1', '1', '1', '1'),
(8, 2, 31, '-1', '-1', '-1', '-1'),
(9, 2, 30, '-1', '-1', '-1', '-1'),
(10, 2, 33, '-1', '-1', '-1', '-1'),
(11, 2, 32, '-1', '-1', '-1', '-1'),
(12, 2, 29, '-1', '-1', '-1', '-1'),
(13, 2, 34, '1', '1', '1', '1'),
(14, 2, 48, '1', '1', '1', '1'),
(15, 2, 58, '1', '1', '1', '1'),
(16, 2, 64, '1', '1', '1', '1'),
(17, 2, 88, '1', '1', '1', '1'),
(18, 2, 117, '1', '1', '1', '1'),
(19, 2, 150, '1', '1', '1', '1'),
(20, 2, 178, '1', '1', '1', '1'),
(21, 2, 202, '1', '1', '1', '1'),
(22, 2, 227, '1', '1', '1', '1'),
(23, 2, 212, '1', '1', '1', '1'),
(24, 2, 256, '1', '1', '1', '1'),
(25, 2, 294, '1', '1', '1', '1'),
(26, 2, 161, '1', '1', '1', '1'),
(27, 2, 163, '1', '1', '1', '1'),
(28, 2, 167, '1', '1', '1', '1'),
(29, 2, 169, '1', '1', '1', '1'),
(30, 2, 300, '-1', '-1', '-1', '-1'),
(31, 2, 326, '1', '1', '1', '1'),
(32, 2, 321, '1', '1', '1', '1'),
(33, 2, 323, '1', '1', '1', '1'),
(34, 2, 301, '1', '1', '1', '1'),
(35, 2, 303, '1', '1', '1', '-1'),
(36, 2, 302, '-1', '-1', '-1', '-1'),
(37, 2, 328, '1', '1', '1', '1'),
(38, 2, 331, '1', '1', '1', '1'),
(39, 2, 330, '1', '1', '1', '1'),
(40, 2, 329, '-1', '-1', '-1', '-1'),
(41, 3, 2, '-1', '-1', '-1', '-1'),
(42, 3, 127, '1', '1', '1', '1'),
(43, 3, 16, '1', '1', '1', '1'),
(44, 3, 34, '1', '1', '1', '1'),
(45, 3, 48, '1', '1', '1', '1'),
(46, 3, 58, '1', '1', '1', '1'),
(47, 3, 64, '1', '1', '1', '1'),
(48, 3, 88, '1', '1', '1', '1'),
(49, 3, 117, '1', '1', '1', '1'),
(50, 3, 150, '1', '1', '1', '1'),
(51, 3, 178, '1', '1', '1', '1'),
(52, 3, 202, '1', '1', '1', '1'),
(53, 3, 227, '1', '1', '1', '1'),
(54, 3, 212, '1', '1', '1', '1'),
(55, 3, 256, '1', '1', '1', '1'),
(56, 3, 294, '1', '1', '1', '1'),
(57, 3, 161, '1', '1', '1', '1'),
(58, 3, 163, '1', '1', '1', '1'),
(59, 3, 167, '1', '1', '1', '1'),
(60, 3, 169, '1', '1', '1', '1'),
(61, 3, 270, '-1', '-1', '-1', '-1'),
(62, 3, 300, '-1', '-1', '-1', '-1'),
(63, 3, 321, '1', '1', '-1', '-1'),
(64, 3, 301, '1', '1', '1', '1'),
(65, 3, 303, '-1', '-1', '-1', '-1'),
(66, 3, 302, '-1', '-1', '-1', '-1'),
(67, 3, 304, '-1', '1', '-1', '-1'),
(68, 3, 314, '-1', '-1', '-1', '-1'),
(69, 3, 328, '-1', '-1', '-1', '-1'),
(70, 3, 329, '-1', '-1', '-1', '-1'),
(71, 3, 330, '1', '1', '1', '1'),
(72, 4, 2, '-1', '-1', '-1', '-1'),
(73, 4, 127, '1', '1', '1', '1'),
(74, 4, 16, '-1', '-1', '-1', '-1'),
(75, 4, 34, '-1', '-1', '-1', '-1'),
(76, 4, 48, '-1', '-1', '-1', '-1'),
(77, 4, 58, '-1', '-1', '-1', '-1'),
(78, 4, 88, '-1', '-1', '-1', '-1'),
(79, 4, 117, '-1', '-1', '-1', '-1'),
(80, 4, 150, '-1', '-1', '-1', '-1'),
(81, 4, 178, '-1', '-1', '-1', '-1'),
(82, 4, 202, '-1', '-1', '-1', '-1'),
(83, 4, 227, '-1', '-1', '-1', '-1'),
(84, 4, 212, '-1', '-1', '-1', '-1'),
(85, 4, 256, '-1', '-1', '-1', '-1'),
(86, 4, 294, '1', '1', '1', '1'),
(87, 4, 70, '1', '1', '1', '1'),
(88, 4, 75, '1', '1', '1', '1'),
(89, 4, 72, '1', '1', '1', '1'),
(90, 4, 265, '1', '1', '1', '1'),
(91, 4, 300, '-1', '-1', '-1', '-1'),
(92, 4, 328, '-1', '-1', '-1', '-1'),
(93, 4, 329, '-1', '-1', '-1', '-1'),
(94, 5, 2, '-1', '-1', '-1', '-1'),
(95, 5, 127, '1', '1', '1', '1'),
(96, 5, 16, '-1', '-1', '-1', '-1'),
(97, 5, 34, '-1', '-1', '-1', '-1'),
(98, 5, 48, '-1', '-1', '-1', '-1'),
(99, 5, 58, '-1', '-1', '-1', '-1'),
(100, 5, 88, '-1', '-1', '-1', '-1'),
(101, 5, 117, '-1', '-1', '-1', '-1'),
(102, 5, 150, '-1', '-1', '-1', '-1'),
(103, 5, 178, '-1', '-1', '-1', '-1'),
(104, 5, 202, '-1', '-1', '-1', '-1'),
(105, 5, 227, '-1', '-1', '-1', '-1'),
(106, 5, 212, '-1', '-1', '-1', '-1'),
(107, 5, 256, '-1', '-1', '-1', '-1'),
(108, 5, 294, '1', '1', '1', '1'),
(109, 5, 70, '1', '1', '1', '1'),
(110, 5, 75, '1', '1', '1', '1'),
(111, 5, 72, '1', '1', '1', '1'),
(112, 5, 265, '1', '1', '1', '1'),
(113, 5, 161, '1', '1', '1', '1'),
(114, 5, 163, '1', '1', '1', '1'),
(115, 5, 167, '1', '1', '1', '1'),
(116, 5, 169, '1', '1', '1', '1'),
(117, 5, 300, '-1', '-1', '-1', '-1'),
(118, 5, 327, '1', '1', '1', '1'),
(119, 5, 328, '-1', '-1', '-1', '-1'),
(120, 5, 329, '-1', '-1', '-1', '-1');

-- --------------------------------------------------------

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;