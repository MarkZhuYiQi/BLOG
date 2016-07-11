<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:24
 */

namespace libs\Model;
use framework\libs\core as core;

class adminModel
{
    function findOneByUsername($username){
        $sql="SELECT `id`,`password`,`username` FROM `blog_user` WHERE `username`='{$username}'";
        return core\DB::findOne($sql);
    }
}