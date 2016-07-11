<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:24
 */

namespace libs\Model;


class authModel
{
    function checkAuth($username,$password){
        $adminObj=M("admin");
        $auth=$adminObj->findOneByUsername($username);
        if(!empty($auth)&&$auth["password"]==$password){
            return $auth;
        }else{
            return false;
        }
    }
}