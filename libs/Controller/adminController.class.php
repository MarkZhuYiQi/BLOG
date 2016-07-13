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
        addons\validate::checkSession();
        $interface=array(
            "show"=>false,
            "add"=>false,
            "modify"=>false
        );
        core\VIEW::assign($interface);
    }
    function index(){
        $this->adminDisplay("admin/admin.tpl");
    }
    function login(){
        if(isset($_SESSION["admin"])){
            $this->adminDisplay("admin/admin.tpl");
        }elseif(!isset($_POST['submit'])){
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
        if($auth=$authObj->checkAuth($username,sha1($password))){
            $_SESSION["admin"]=$auth["username"];
            $this->adminDisplay("admin/admin.tpl");

        }
    }
    function logout(){
        if(!isset($_SESSION["admin"])){
            addons\tool::alertBack("unexpected operation error!");
        }
        unset($_SESSION["admin"]);
        addons\tool::alertLocation("admin.php?controller=admin&method=login");
    }
    function userList(){
        $userObj=M("user");
        $res=$userObj->getAllUserInfo();
        core\VIEW::assign(array("allInfo"=>$res,"show"=>true));
        $this->adminDisplay("admin/admin_userList.tpl");
    }
    function modifyUser(){
        if(isset($_GET["id"])){
            if(is_numeric($_GET["id"])){
                $id=$_GET["id"];
            }else{
                addons\tool::alertBack("user ID error!");
            }
        }else{
            addons\tool::alertBack("does not specify the user!");
        }
        $userObj=M("user");
        $res=$userObj->getOneUserInfo($id);
        core\VIEW::assign(array("info"=>$res));
        core\VIEW::assign(array("modify"=>true));
        $this->adminDisplay("admin/admin_userList.tpl");
    }
    function addUser(){
        core\VIEW::assign(array("add"=>true));
        if(isset($_POST["submit"])){
            if($_POST["password"]!=null&&$_POST["confirmPassword"]!=null){
                if($_POST["password"]===$_POST["confirmPassword"]){
                    $addInfo["password"]=sha1($_POST["password"]);
                }
            }
            $addInfo["username"]=$_POST["username"];
        }
        $this->adminDisplay("admin/admin_userList.tpl");
    }
    function deleteUser(){

    }
    function addArticle(){

    }
    function modifyArticle(){

    }
    function deleteArticle(){

    }
    function audit(){

    }
    function commentList(){

    }


    function adminDisplay($tpl){

        core\VIEW::assign(array("admin"=>$_SESSION["admin"]));
        core\VIEW::display($tpl);
    }
}