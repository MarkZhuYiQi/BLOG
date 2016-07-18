<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:19
 */

namespace libs\Controller;
use framework\libs\core as core;

class indexController extends controller
{
    function index(){
//        $model=M("index");
//        $data=$model->index();
//        core\VIEW::assign(array("data"=>$data));
        $this->showArticleListFront();
        core\VIEW::display("index.tpl");
    }
    function showArticleListFront(){
        $this->model=M("article");
        parent::page($this->model->getCountArticle());
        $res=$this->model->getAllArticleFront();
        var_dump($res);
        core\VIEW::assign(array("articleInfo"=>$res,"show"=>true));
        core\VIEW::assign(array("show"=>true));
    }
}