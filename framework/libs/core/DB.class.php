<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/3
 * Time: 17:11
 */

namespace framework\libs\core;

class DB
{
    public static $db;
    public static function init($dbType,$config){
        $dbType="framework\\libs\\DB\\$dbType";
        self::$db=new $dbType;
        self::$db->connect($config);
    }
    public static function query($sql){
        return self::$db->query($sql);
    }
    public static function findAll($sql){
        $query=self::$db->query($sql);
        return self::$db->findAll($query);
    }
    public static function findOne($sql){
        $query=self::$db->query($sql);
        return self::$db->findOne($query);
    }
    public static function findResult($sql,$row=0,$field=0){
        $query=self::$db->query($sql);
        return self::$db->findResult($query,$row,$field);
    }
    public static function insert($table,$arr){
        return self::$db->insert($table,$arr);
    }
    public static function update($table,$arr,$where,$additional){
        return self::$db->update($table,$arr,$where,$additional);
    }
    public static function delete($table,$where){
        return self::$db->delete($table,$where);
    }
}