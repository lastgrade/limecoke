<?php

global $project;
$project = 'mysite';

global $database;
$database = 'limecoke';

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');

ContactForm::set_jquery_included(true);
define('MAIL_FROM_ADDRESS','webmail@limecoke.com');