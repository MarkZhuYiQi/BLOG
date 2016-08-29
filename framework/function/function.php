<?php
/**
 * @param $controller   控制器名
 * @param $method       方法名
 * 新建一个控制器对象并调用对应方法
 */
function C($controller,$method){
    require_once ROOT_PATH."/libs/Controller/".$controller."Controller.class.php";
    $controller="\\libs\\Controller\\".$controller."Controller";
    $obj=new $controller;
    $obj->$method();
}

/**
 * @param $model    model名称
 * @return mixed    返回这个model对象
 */
function M($model){
    require_once ROOT_PATH."/libs/Model/".$model."Model.class.php";
    $model="\\libs\\Model\\".$model."Model";
    $obj=new $model;
    return $obj;
}

/**
 * @param $view     视图引擎名称
 * @return mixed    返回引擎对象
 */
function V($view){
    require_once ROOT_PATH."/libs/View/".$view."View.class.php";
    $View="\\libs\\View\\".$view."View";
    $obj=new $view;
    return $obj;
}

/**
 * @param $data     数据源
 * @return string   返回安全转义的数据
 */
function convert($data){
    if(isset($data)&&!empty($data)){
        return (get_magic_quotes_gpc()?$data:addslashes($data));
    }
}
