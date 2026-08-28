--
-- Upgrade 1.4.0 -> 1.4.1
--
-- BREAKING CHANGE : the task type key 'taskCheckoutRepositoy' (sic) has been renamed to
-- 'taskCloneRepository' (SVN support removal : the repository is always cloned with Git)
--

UPDATE workflow_task SET task_type_key = 'taskCloneRepository' WHERE task_type_key = 'taskCheckoutRepositoy';
