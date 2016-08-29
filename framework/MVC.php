<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:40
 */
use framework\libs\core as core;
error_reporting(E_ALL&~E_DEPRECATED);
require_once dirname(__FILE__) . "/loader.php";
//两种方法都可以用于自动加载
spl_autoload_register("\\loader::load");    //如果遇到没有定义的类，就运行loader下的load文件
//spl_autoload_register(array("\\loader","load"));

class MVC{
    public static $controller;
    public static $method;
    public static $config;

    /**
     * 初始化视图引擎
     */
    public static function init_view(){
        core\VIEW::init("Smarty",self::$config["viewConfig"]);
    }
    //初始化数据库
    public static function init_db(){
        core\DB::init("mysqli",self::$config["dbConfig"]);
    }
    //初始化控制器
    public static function init_controller(){
        self::$controller=isset($_GET["controller"])?$_GET["controller"]:"index";
    }
    //初始化控制器方法
    public static function init_method(){
        self::$method=isset($_GET["method"])?$_GET["method"]:"index";
    }
    public static function init_controller_admin(){
        self::$controller=isset($_GET["controller"])?$_GET["controller"]:"admin";
    }
    public static function init_method_admin(){
        self::$method=isset($_GET["method"])?$_GET["method"]:"index";
    }
    //根据url内容的不同，调用不同的初始化方法
    public static function init_page(){
        $pattern="/\/([\w\-]+)\/[\w\-]+.[\w]+$/";       // /blog/admin或者blog/xxxxxxxxx.php
        if(preg_match_all($pattern,$_SERVER["SCRIPT_NAME"],$match)){        //script_name获取脚本值，\(admin).php
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
    //初始化
    public static function run($config){
        self::$config=$config;
        self::init_view();
        self::init_db();
        self::init_page();
        C(self::$controller,self::$method);
    }

}