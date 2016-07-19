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

class indexController extends controller
{
    function index(){
//        $model=M("index");
//        $data=$model->index();
//        core\VIEW::assign(array("data"=>$data));
        $this->showArticleListFront();
        $this->login();
        core\VIEW::display("index.tpl");
    }
    function showArticleListFront(){
        $this->model=M("article");
        parent::page($this->model->getCountArticle());
        $res=$this->model->getAllArticleFront();
        core\VIEW::assign(array("articleInfo"=>$res,"show"=>true));
    }
    function showArticleDetail(){
        $this->model=M("article");
        $id=$_GET["id"];
        $res=$this->model->getOneArticle($id);
        core\VIEW::assign(array("info"=>$res));
        core\VIEW::display("article.html");
    }
    function login(){
        if(isset($_SESSION["user"])){
            $show["user"]=true;
            $show["login"]=false;
            if(isset($_SESSION["user"])) {
                $show["username"]=$_SESSION["user"];
            }
            core\VIEW::assign($show);
        }else{
            $show["user"]=false;
            $show["login"]=true;
            core\VIEW::assign($show);
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
            $_SESSION["user"]=$auth["username"];
            $this->index();
        }else{
            addons\tool::alertBack("username or password error!");
        }
    }
    function logout(){
        if(!isset($_SESSION["user"])){
            addons\tool::alertBack("unexpected operation error!");
        }
        unset($_SESSION["user"]);
        addons\tool::alertLocation("index.php");
    }
}