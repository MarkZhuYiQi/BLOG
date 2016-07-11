<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:19
 */

namespace libs\Controller;
use framework\libs\core as core;
use framework\libs\addons as addons;
class adminController
{
    public function __construct(){
        if(!isset($_SESSION["admin"])&&\MVC::$method!="login"){
            addons\tool::alertLocation("","admin.php?controller=admin&method=login");
        }
    }
    function index(){
        core\VIEW::display("admin/admin.tpl");
    }
    function login(){
        if(!isset($_POST['submit'])){
            core\VIEW::display("admin/admin_login.html");
        }else{
            $this->checkLogin();
        }
    }
    function checkLogin(){
        if(empty($_POST["username"]||empty($_POST["password"]))){
            addons\tool::alertBack("login failed!");
        }
        $username=addslashes($_POST["username"]);
        $password=addslashes($_POST["password"]);
        $authObj=M("auth");
        if($auth=$authObj->checkAuth($username,$password)){
            $_SESSION["admin"]=$auth;
            addons\tool::alertLocation("login success!","admin.php?controller=admin&method=index");
        }
    }
}