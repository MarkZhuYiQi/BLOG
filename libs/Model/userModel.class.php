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
    public $limit;       //数据库分页用
    function getAllUserInfo(){
        echo $sql="SELECT `id`,`username`,`email`,`face`,`authority`,`date` FROM `{$this->table}` $this->limit";
        return core\DB::findAll($sql);
    }
    function getCountUser(){
        $sql="SELECT count(`id`) as `total` FROM `{$this->table}`";
        $total=core\DB::findOne($sql);
        return $total["total"];
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
    function modifyUserInfo($info,$where){
        if(is_array($info)){
            if(core\DB::update("blog_user",$info,$where)){
                return true;
            }
            return false;
        }
    }
}