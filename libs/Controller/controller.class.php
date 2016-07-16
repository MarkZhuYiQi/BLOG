<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/16
 * Time: 20:08
 */

namespace libs\Controller;


use framework\libs\addons as addons;
use framework\libs\core as core;
class controller
{
    protected $model;
    protected function page($total,$pageSize=PAGE_SIZE){
        $page=new addons\page($total,$pageSize);
        $nav=$page->showPage();
        $this->model->limit=$page->limit;
        $arr["nav"]=$nav;
        $arr["showPage"]="true";
        core\VIEW::assign($arr);
    }
}