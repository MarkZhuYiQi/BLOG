<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/11/2016
 * Time: 2:45 PM
 */

namespace framework\libs\DB;


class mysqli
{
    public $mysqli;
    function err($error){
        die("sorry, you operation has something wrong,the problem is: ".$error);
    }
    function connect($dbInfo){
        extract($dbInfo);
        $this->mysqli=new \mysqli($DB_HOST,$DB_USER,$DB_PASSWORD,$DB_NAME);
        if($this->mysqli->connect_errno){
            $this->err("connect error: ".$this->mysqli->connect_errno);
        }
        $this->mysqli->set_charset($DB_CHARSET);
    }
    function query($sql){
        if(!$query=$this->mysqli->query($sql)){
            $this->err($sql."<br />".$this->mysqli->error);
        }else{
            return $query;
        }
    }
    function findOne($query){
        $rs=$query->fetch_array(MYSQLI_ASSOC);
        return isset($rs)?$rs:"";
    }
    function findAll($query){
        while($rs=$query->fetch_array(MYSQLI_ASSOC)){
            $list[]=$rs;
        }
        return isset($list)?$list:"";
    }

}