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
            if(addons\validate::checkNull($_POST["username"]))return false;
            if(addons\validate::checkLength($_POST["username"],6,"less"))return false;
            if(addons\validate::checkNull($_POST["password"]))return false;
            if(addons\validate::checkLength($_POST["password"],6,"less"))return false;
            if(addons\validate::checkNull($_POST["confirmPassword"]))return false;
            if(addons\validate::checkLength($_POST["confirmPassword"],6,"less"))return false;
            if(addons\validate::checkEquals($_POST["confirmPassword"],$_POST["password"]))return false;
            if(addons\validate::checkNull($_POST["question"]))return false;
            if(addons\validate::checkLength($_POST["question"],6,"less"))return false;
            if(addons\validate::checkNull($_POST["answer"]))return false;
            if(addons\validate::checkLength($_POST["answer"],6,"less"))return false;
            if(addons\validate::checkNull($_POST["face"]))return false;
            if(addons\validate::checkNull($_POST["authority"]))return false;
            $addInfo["username"]=$_POST["username"];
            $addInfo["password"]=sha1($_POST["password"]);
            $addInfo["email"]=$_POST["email"];
            $addInfo["question"]=$_POST["question"];
            $addInfo["answer"]=sha1($_POST["answer"]);
            $addInfo["face"]=$_POST["face"];
            $addInfo["state"]=$_POST["authority"];
            $addInfo["time"]=date("Y-m-d H:i:s");
            $userObj=M("user");
            $userObj->createNewUser($addInfo);


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
    function upload(){
        addons\upload::show();
    }

    function adminDisplay($tpl){

        core\VIEW::assign(array("admin"=>$_SESSION["admin"]));
        core\VIEW::display($tpl);
    }
}