<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:19
 */

namespace libs\Controller;
use framework\libs\core as core;

class adminController
{
    function index(){

//        $model=M("index");
//        $data=$model->index();
//        core\VIEW::assign(array("data"=>$data));

        core\VIEW::display("admin/admin.tpl");
    }
}