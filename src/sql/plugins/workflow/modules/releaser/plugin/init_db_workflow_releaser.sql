
DELETE FROM `workflow_action`;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
INSERT INTO `workflow_action` (`id_action`, `name`, `description`, `id_workflow`, `id_state_before`, `id_state_after`, `id_icon`, `is_automatic`, `is_mass_action`, `display_order`, `is_automatic_reflexive_action`) VALUES
    (1, 'clone repo', 'clone repo', 1, 1, 2, 2, 0, 0, 1, 0),
    (2, 'Releaser site', 'Releaser site', 2, 3, 4, 1, 0, 0, 1, 0),
    (3, 'release SVN component', 'release SVN component', 3, 5, 6, 1, 0, 1, 1, 0);
/*!40000 ALTER TABLE `workflow_action` ENABLE KEYS */;

-- Dumping data for table releaser3.workflow_state: 4 rows
DELETE FROM `workflow_state`;
/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
INSERT INTO `workflow_state` (`id_state`, `name`, `description`, `id_workflow`, `is_initial_state`, `is_required_workgroup_assigned`, `id_icon`, `display_order`) VALUES
    (1, 'etat init', 'etat init', 1, 1, 0, NULL, 1),
    (2, 'etat final', 'etat final', 1, 0, 0, NULL, 2),
    (3, 'etat init', 'release site', 2, 1, 0, NULL, 1),
    (4, 'etat final', 'etat final', 2, 0, 0, NULL, 2),
    (5, 'etat initial', 'etat initial', 3, 1, 0, NULL, 1),
    (6, 'etat final', 'etat final', 3, 0, 0, NULL, 2);
/*!40000 ALTER TABLE `workflow_state` ENABLE KEYS */;

-- Dumping data for table releaser3.workflow_task: 6 rows
DELETE FROM `workflow_task`;
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` (`id_task`, `task_type_key`, `id_action`, `display_order`) VALUES
    (1, 'taskGitCloneRepositoy', 1, 1),
    (2, 'taskGitMerge', 1, 2),
    (3, 'taskGitReleasePrepare', 1, 3),
    (4, 'taskGitReleasePerform', 1, 4),
    (5, 'taskTagSite', 2, 2),
    (6, 'taskCheckoutSite', 2, 1),
    (7, 'taskCheckoutComponent', 3, 1);
/*!40000 ALTER TABLE `workflow_task` ENABLE KEYS */;

-- Dumping data for table releaser3.workflow_workflow: 2 rows
DELETE FROM `workflow_workflow`;
/*!40000 ALTER TABLE `workflow_workflow` DISABLE KEYS */;
INSERT INTO `workflow_workflow` (`id_workflow`, `name`, `description`, `creation_date`, `is_enabled`, `workgroup_key`) VALUES
    (1, 'release git', 'release git', '2017-02-14 14:52:31', 1, 'all'),
    (2, 'release site', 'release site', '2017-03-20 10:53:45', 1, 'all'),
    (3, 'release SVN component', 'release SVN component', '2017-03-21 14:28:15', 1, 'all');
/*!40000 ALTER TABLE `workflow_workflow` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
