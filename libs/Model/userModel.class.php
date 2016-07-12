<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/12
 * Time: 22:26
 */

namespace libs\Model;
use framework\libs\core as core;

class userModel
{
    public $table="blog_user";
    function getAllUserInfo(){
        $sql="SELECT `id`,`username`,`email`,`face`,`state`,`date` FROM `{$this->table}` ORDER BY `date`";
        return core\DB::findAll($sql);
    }
    function getOneUserInfo($id){
        $sql="SELECT `id`,`username`,`email`,`face`,`state`,`date` FROM `{$this->table}` WHERE `id`={$id}";
        return core\DB::findOne($sql);
    }
}