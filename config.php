<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 18:00
 */
session_start();
error_reporting(E_ALL ^ E_DEPRECATED);
header('Content-type:text/html;charset=utf-8');
define('ROOT_PATH',dirname(__FILE__));
date_default_timezone_set('Asia/shanghai');
/*
$include_path=get_include_path();
$include_path.=ROOT_PATH.'\\libs\\Controller\\;';
$include_path.=ROOT_PATH.'\\libs\\Model\\;';
$include_path.=ROOT_PATH.'\\libs\\View\\;';
$include_path.=ROOT_PATH.';';
set_include_path($include_path);
function __autoload($classname){
    require_once $classname.'.class.php';
}
*/
$config=array(
    "viewConfig"=>array(
        "left_delimiter"=>"{",
        "right_delimiter"=>"}",
        "compile_dir"=>"template_c",
        "template_dir"=>"tpl"
    ),
    "dbConfig"=>array(
        "DB_HOST"=>"localhost",
        "DB_USER"=>"root",
        "DB_PASSWORD"=>"7777777y",
        "DB_NAME"=>"blog",
        "DB_CHARSET"=>"utf-8"
    )
);