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
define("ROOT_PATH",str_replace('\\','/',str_replace('\\','/',dirname(__FILE__))));
define("URL_PATH",str_replace('\\','/',mb_substr($_SERVER["REQUEST_URI"],0,5)));
define('CSS_PATH',URL_PATH."/styles/css");
define('JS_PATH',URL_PATH."/styles/js");
define('IMG_PATH',URL_PATH."/styles/img");
$assigns=array(
    'url_path'=>URL_PATH,
    'css_path'=>CSS_PATH,
    'js_path'=>JS_PATH,
    'img_path'=>IMG_PATH
);
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
        "compile_dir"=>ROOT_PATH."/template_c",
        "template_dir"=>ROOT_PATH."/tpl"
    ),
    "dbConfig"=>array(
        "DB_HOST"=>"localhost",
        "DB_USER"=>"root",
        "DB_PASSWORD"=>"7777777y",
        "DB_NAME"=>"blog",
        "DB_CHARSET"=>"utf-8"
    )
);