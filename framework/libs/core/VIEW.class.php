<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:03
 */

namespace framework\libs\core;


class VIEW
{
    public static $view;
    static function init($viewType,$config){
        self::$view=new $viewType;
        foreach($config as $key=>$value){
            self::$view->$key=$value;
        }
    }
    static function assign($arr){
        if(is_array($arr)){
            foreach($arr as $key=>$value){
                self::$view->assign($key,$value);
            }
        }
    }
    static function display($template){
        self::$view->display($template);
    }
}