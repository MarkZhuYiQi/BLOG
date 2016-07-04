<?php
function C($controller,$method){
    require_once "libs/Controller/".$controller."Controller.class.php";
    $controller="\\libs\\Controller\\".$controller."Controller";
    $obj=new $controller;
    $obj->$method();
}
function M($model){
    require_once "libs/Model/".$model."Model.class.php";
    $model="\\libs\\Model\\".$model."Model";
    $obj=new $model;
    return $obj;
}
function V($view){
    require_once "libs/View/".$view."View.class.php";
    $View="\\libs\\View\\".$view."View";
    $obj=new $view;
    return $obj;
}
function convert($data){
    if(isset($data)&&!empty($data)){
        return (get_magic_quotes_gpc()?$data:addslashes($data));
    }
}
