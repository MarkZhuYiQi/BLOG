<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:40
 */
use framework\libs\core as core;
error_reporting(E_ALL&~E_DEPRECATED);
require_once dirname(__FILE__)."/include.inc.php";
foreach($paths as $key =>$value){
    require_once "$value";
}
class MVC{
    public static $controller;
    public static $method;
    public static $config;

    public static function init_view(){
        core\VIEW::init("Smarty",self::$config["viewConfig"]);
    }
    public static function init_db(){
        core\DB::init("mysqli",self::$config["dbConfig"]);
    }
    public static function init_controller(){
        self::$controller=isset($_GET["controller"])?$_GET["controller"]:"index";
    }
    public static function init_method(){
        self::$method=isset($_GET["method"])?$_GET["method"]:"index";
    }
    public static function init_controller_admin(){
        self::$controller=isset($_GET["controller"])?$_GET["controller"]:"admin";
    }
    public static function init_method_admin(){
        self::$method=isset($_GET["method"])?$_GET["method"]:"index";
    }

    public static function init_page(){
        $pattern="/\/([\w\-]+)\/[\w\-]+.[\w]+$/";
        if(preg_match_all($pattern,$_SERVER["SCRIPT_NAME"],$match)){
            switch($match[1][0]){
                case "admin":
                    self::init_controller_admin();
                    self::init_method_admin();
                    break;
                default:
                    self::init_controller();
                    self::init_method();
                    break;
            }
        }
    }
    public static function run($config){
        self::$config=$config;
        self::init_view();
        self::init_db();
        self::init_page();
        C(self::$controller,self::$method);
    }

}