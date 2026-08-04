--
-- Upgrade 1.3.0 -> 1.3.1
--
-- BREAKING CHANGE : the task type key 'taskUpdateJiraVersions' has been renamed to
-- 'taskUpdateBugtrackerVersions'
--

UPDATE workflow_task SET task_type_key = 'taskUpdateBugtrackerVersions' WHERE task_type_key = 'taskUpdateJiraVersions';
