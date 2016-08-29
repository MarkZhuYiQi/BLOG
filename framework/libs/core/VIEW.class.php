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

    /**
     * @param $viewType 视图引擎类型
     * @param $config   引擎相关配置
     */
    static function init($viewType,$config){
        self::$view=new $viewType;
        foreach($config as $key=>$value){
            self::$view->$key=$value;
        }
        global $assigns;    //各个文件夹路径赋值，该变量在config.php中定义
        self::assign($assigns);
    }

    /**
     * @param $arr  用于赋值的数组
     */
    static function assign($arr){
        if(is_array($arr)){
            foreach($arr as $key=>$value){
                self::$view->assign($key,$value);
            }
        }
    }

    /**
     * 显示模板
     * @param $template
     *
     */
    static function display($template){
        self::$view->display($template);
    }
}