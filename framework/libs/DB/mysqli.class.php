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
    function insert($table,$arr)
    {
        foreach ($arr as $key => $value) {
            $value = $this->mysqli->real_escape_string($value);
            $keysArr[] = "`" . $key . "`";
            $valuesArr[] = "'" . $value . "'";
        }
        $keys = implode(",", $keysArr);
        $values = implode(",", $valuesArr);
        $sql = "INSERT INTO {$table} ({$keys}) VALUES({$values})";
        return $this->query($sql);
    }
    function update($table, $arr="",$where,$additional="")
    {
        if(is_array($arr)){
            foreach($arr as $key=>$value) {
                $value = $this->mysqli->real_escape_string($value);
                $string[] = "`" . $key . "`='" . $value . "'";
            }
            $keysAndValues=implode(",",$string);
        }
        if(!isset($keysAndValues))$keysAndValues="";
        $sql="UPDATE `{$table}` SET {$keysAndValues}{$additional} WHERE {$where}";
        return $this->query($sql);
    }
    function delete($table,$where){
        if(is_array($where)){
            foreach($where as $key=>$value){
                $arr[]="`$key`='$value'";
            }
            $string=implode(",",$arr);
        }else{
            $string=$where;
        }
        $sql="DELETE FROM `{$table}` WHERE {$string} {$this->limit}";
        return $this->query($sql);
    }
}
