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
class adminController extends controller
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
        }else{
            addons\tool::alertBack("username or password error!");
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
        $this->model=M("user");
        parent::page($this->model->getCountUser());
        $res=$this->model->getAllUserInfo();
        core\VIEW::assign(array("allInfo"=>$res,"show"=>true));
        $this->adminDisplay("admin/admin_userList.tpl");
    }
    function deleteUser(){
        if(isset($_GET["id"])){
            if(is_numeric($_GET["id"])&&$_GET["id"]>0){
                $where="`id`={$_GET['id']}";
                $userObj=M("user");
                if($userObj->deleteUser($where)){
                    addons\tool::alertLocation("admin.php?controller=admin&method=userList","delete successful!");
                }else{
                    addons\tool::alertBack("delete failed!");
                }
            }else{
                addons\tool::alertBack("id illegal!");
            }
        }else{
            addons\tool::alertBack("ID does not exist!");
        }
    }
    function modifyUser(){
        if(!isset($_POST["modify"])){
            if(isset($_GET["id"])){
                if(is_numeric($_GET["id"])){
                    $id=$_GET["id"];
                }else{
                    addons\tool::alertBack("user ID error!");
                }
            }else {
                addons\tool::alertBack("does not specify the user!");
            }
            $userObj=M("user");
            $res=$userObj->getOneUserInfo($id);
            core\VIEW::assign(array("info"=>$res));
            core\VIEW::assign(array("modify"=>true));
            $this->adminDisplay("admin/admin_userList.tpl");
        }else{
            if(addons\validate::checkNull($_POST["username"]))addons\tool::alertBack("username could not be null");;
//            if(addons\validate::checkLength($_POST["username"],6,"less"))addons\tool::alertBack("username could not less than 6");
            if(!empty($_POST["password"]||!empty($_POST["confirmPassword"]))){
                if(addons\validate::checkNull($_POST["password"]))addons\tool::alertBack("password could not be null");
//            if(addons\validate::checkLength($_POST["password"],6,"less"))addons\tool::alertBack("password could not less than 6");
                if(addons\validate::checkNull($_POST["confirmPassword"]))addons\tool::alertBack("password could not be null");
//            if(addons\validate::checkLength($_POST["confirmPassword"],6,"less"))addons\tool::alertBack("password could not less than 6");
                if(addons\validate::checkEquals($_POST["confirmPassword"],$_POST["password"]))addons\tool::alertBack("password mismatch!");
                $addInfo["password"]=sha1($_POST["password"]);
            }
            if(addons\validate::checkNull($_POST["question"]))addons\tool::alertBack("question could not be null");
//            if(addons\validate::checkLength($_POST["question"],6,"less"))addons\tool::alertBack("question could not less than 6");
            if(!empty($_POST["answer"])){
                if(addons\validate::checkNull($_POST["answer"]))addons\tool::alertBack("answer could not be null");
//            if(addons\validate::checkLength($_POST["answer"],6,"less"))addons\tool::alertBack("answer could not be less than 6");
                $addInfo["answer"]=sha1($_POST["answer"]);
            }
            if(addons\validate::checkNull($_POST["face"]))addons\tool::alertBack("face could not be null");
            if(addons\validate::checkNull($_POST["authority"]))addons\tool::alertBack("authority must be selected");
            $addInfo["username"]=$_POST["username"];
            $addInfo["email"]=$_POST["email"];
            $addInfo["question"]=$_POST["question"];
            $addInfo["face"]=$_POST["face"];
            $addInfo["authority"]=$_POST["authority"];
            $userObj=M("user");
            if($userObj->modifyUserInfo($addInfo,$where)){
                addons\tool::alertLocation("admin.php?controller=admin&method=userList","update user success!");
            }
        }
    }
    function addUser(){
        core\VIEW::assign(array("add"=>true));
        if(isset($_POST["submit"])){
            if(addons\validate::checkNull($_POST["username"]))addons\tool::alertBack("username could not be null");;
//            if(addons\validate::checkLength($_POST["username"],6,"less"))addons\tool::alertBack("username could not less than 6");
            if(addons\validate::checkNull($_POST["password"]))addons\tool::alertBack("password could not be null");
//            if(addons\validate::checkLength($_POST["password"],6,"less"))addons\tool::alertBack("password could not less than 6");
            if(addons\validate::checkNull($_POST["confirmPassword"]))addons\tool::alertBack("password could not be null");
//            if(addons\validate::checkLength($_POST["confirmPassword"],6,"less"))addons\tool::alertBack("password could not less than 6");
            if(addons\validate::checkEquals($_POST["confirmPassword"],$_POST["password"]))addons\tool::alertBack("password mismatch!");
            if(addons\validate::checkNull($_POST["question"]))addons\tool::alertBack("question could not be null");
//            if(addons\validate::checkLength($_POST["question"],6,"less"))addons\tool::alertBack("question could not less than 6");
            if(addons\validate::checkNull($_POST["answer"]))addons\tool::alertBack("answer could not be null");
//            if(addons\validate::checkLength($_POST["answer"],6,"less"))addons\tool::alertBack("answer could not be less than 6");
            if(addons\validate::checkNull($_POST["face"]))addons\tool::alertBack("face could not be null");
            if(addons\validate::checkNull($_POST["authority"]))addons\tool::alertBack("authority must be selected");
            $addInfo["username"]=$_POST["username"];
            $addInfo["password"]=sha1($_POST["password"]);
            $addInfo["email"]=$_POST["email"];
            $addInfo["question"]=$_POST["question"];
            $addInfo["answer"]=sha1($_POST["answer"]);
            $addInfo["face"]=$_POST["face"];
            $addInfo["authority"]=$_POST["authority"];
            $addInfo["date"]=date("Y-m-d H:i:s");
            $userObj=M("user");
            if($userObj->createNewUser($addInfo)){
                addons\tool::alertLocation("admin.php?controller=admin&method=userList","create new user success!");
            }
        }
        $this->adminDisplay("admin/admin_userList.tpl");
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
    function checkUserInfo(){

    }
}