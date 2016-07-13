<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/13
 * Time: 21:41
 */

namespace libs\Controller;
use framework\libs\core as core;
use framework\libs\addons as addons;

class contentController
{
    function show(){
        core\VIEW::display("article.html");
    }
}