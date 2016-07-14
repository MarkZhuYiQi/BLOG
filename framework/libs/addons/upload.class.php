<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/14/2016
 * Time: 9:17 AM
 */

namespace framework\libs\addons;


class upload
{
    private $error;     //错误代码

    static function show(){
        var_dump($_POST);
        var_dump($_GET);
        var_dump($_FILES);
    }
}

