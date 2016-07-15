<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/12
 * Time: 22:26
 */

namespace libs\Model;
use framework\libs\core as core;
use framework\libs\addons as addons;
class userModel
{
    public $table="blog_user";
    function getAllUserInfo(){
        $sql="SELECT `id`,`username`,`email`,`face`,`authority`,`date` FROM `{$this->table}` ORDER BY `date`";
        return core\DB::findAll($sql);
    }
    function getOneUserInfo($id){
        $sql="SELECT `id`,`username`,`email`,`face`,`question`,`answer`,`authority`,`date` FROM `{$this->table}` WHERE `id`={$id}";
        return core\DB::findOne($sql);
    }
    function createNewUser($info){
        if(is_array($info)){
            if(core\DB::insert("blog_user",$info)){
                return true;
            }
            return false;
        }
    }
}