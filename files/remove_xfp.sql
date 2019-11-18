
DELETE FROM JaduAdminPageAccess WHERE page_id IN (
    SELECT id FROM JaduModulePages WHERE module_id IN (
        SELECT id FROM JaduModules WHERE module_url IN ('/xforms2/index.php', '/PayBridge/index.php')
    )
);

DELETE FROM JaduModulePages WHERE module_id IN (
    SELECT id FROM JaduModules WHERE module_url IN ('/xforms2/index.php', '/PayBridge/index.php')
);

DELETE FROM JaduModules WHERE module_url IN ('/xforms2/index.php', '/PayBridge/index.php');

DELETE FROM JaduScheduledTasks WHERE `script` LIKE 'xforms%';
