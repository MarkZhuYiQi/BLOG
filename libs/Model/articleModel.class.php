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
    public $limit;
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
    function getAllArticleFront(){
        $sql="SELECT `id`,`title`,`date`,`readcount`,`info`,`thumbnail` FROM {$this->table} ORDER BY `date` DESC $this->limit";
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
    function getOneArticle($id){
        $sql="SELECT `id`,`title`,`author`,`from`,`type`,`keyword`,`content`,`thumbnail`,`info`,`readlimit`,`readcount`,`comment`,`date` FROM `{$this->table}` WHERE `id`='{$id}'";
        return core\DB::findOne($sql);
    }
    function setArticleReadCount($id){
        $where="`id`={$id}";
        $additional="`readcount`=`readcount`+1";
        return core\DB::update($this->table,"",$where,$additional);
    }
    function modifyArticle($addInfo,$where){
        if(isset($addInfo)){
            if(is_array($addInfo)){
                if(core\DB::update($this->table,$addInfo,$where)){
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }
    function deleteArticle($where){
        return core\DB::delete($this->table,$where);
    }
}