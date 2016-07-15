<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:45
 */
define("FRAMEWORK_PATH",__DIR__);
require_once (FRAMEWORK_PATH."/function/function.php");
require_once (FRAMEWORK_PATH."/libs/view/Smarty/Smarty.class.php");
class loader{
    //class中自带命名空间，遵守PSR4命名规范
    static function load($class){
        $file=str_replace("\\","/",ROOT_PATH."/".$class.".class.php");
        if(file_exists($file)){
            require_once ("$file");
        }
    }
}