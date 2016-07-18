<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/14/2016
 * Time: 10:59 AM
 */

namespace libs\Model;
use framework\libs\core as core;
use framework\libs\addons as addons;
class articleModel
{
    public $table="blog_article";
    function getCountArticle(){
        $sql="SELECT count(`id`) as `total` FROM `{$this->table}`";
        $total=core\DB::findOne($sql);
        return $total["total"];
    }
    function getAllArticle(){
        $sql="SELECT `id`,`title`,`author`,`from`,`type`,`keyword`,`content`,`thumbnail`,`info`,`readlimit`,`comment`,`date` FROM `{$this->table}` ORDER BY `date` DESC $this->limit";
        return core\DB::findAll($sql);
    }
    function createNewArticle($info){
        if(isset($info)){
            if(is_array($info)){
                if(core\DB::insert($this->table,$info)){
                    return true;
                }
                return false;
            }
        }
    }
    function getOneArticle($where){
        $sql="SELECT `id`,`title`,`author`,`from`,`type`,`keyword`,`content`,`thumbnail`,`info`,`readlimit`,`comment`,`date` FROM `{$this->table}` WHERE `id`='{$where}'";
        return core\DB::findOne($sql);
    }
}