<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 18:05
 */
define("ADMIN_PATH",substr(dirname(__FILE__),0,-6));
require_once(ADMIN_PATH."/config.php");
require_once(ADMIN_PATH."/framework/MVC.php");
MVC::run($config);