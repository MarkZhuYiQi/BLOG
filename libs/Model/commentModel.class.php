<?php
/**
 * Created by PhpStorm.
 * User: szl4zsy
 * Date: 7/20/2016
 * Time: 1:05 PM
 */

namespace libs\Model;
use framework\libs\core as core;

class commentModel
{
    public $table="blog_comment";
    public $limit;
    function addComment($comment){
        return core\DB::insert($this->table,$comment);
    }
    function showComment($articleId){
        $sql="SELECT `id`,`user`,`content`,`state`,`articleId`,`replyId`,`date`,`sustain`,`oppose` FROM `{$this->table}` WHERE `ArticleId`={$articleId} ORDER BY `date` DESC $this->limit";
        $res=core\DB::findAll($sql);
        foreach($res as $key=>$value) {
            if ($face = $this->getUserFace($value["user"])) {
                $res[$key]["face"] = $face;
            }
            $sql = "SELECT count(`id`) as `total` FROM `{$this->table}` WHERE `id`={$res[$key]['replyId']}";
            $total = core\DB::findOne($sql);
            $res[$key]["replyTotal"] = $total['total'];
        }
        return $res;
    }
    function getUserFace($name){
        $sql="SELECT `face` FROM `blog_user` WHERE `username`='{$name}' LIMIT 1";
        $res=core\DB::findOne($sql);
        return $res["face"];
    }
}