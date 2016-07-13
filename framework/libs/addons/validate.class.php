<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/13/2016
 * Time: 4:31 PM
 */

namespace framework\libs\addons;
use framework\libs\core as core;

class validate
{
    static public function checkNull($data){
        if(trim($data)==""){
            return true;
        }
        return false;
    }
    static public function checkLength($data,$length,$flag){
        if($flag=="more"){
            if(mb_strlen(trim($data),"utf-8")>$length){
                return true;
            }
            return false;
        }elseif($flag=="less"){
            if(mb_strlen(trim($data),"utf-8")<$length){
                return true;
            }
            return false;
        }elseif($flag="equal"){
            if(mb_strlen(trim($data),"utf-8")!=$length){
                return true;
            }
            return false;
        }else{
            tool::alertBack("flag ERROR!");
        }
    }
    static public function checkEquals($data1,$data2){
        if(trim($data1)!=trim($data2)){
            return true;
        }
        return false;
    }
    static public function checkSession(){
        if(!isset($_SESSION["admin"])&&\MVC::$method!="login"){
            tool::alertLocation("admin.php?controller=admin&method=login");
        }
    }
}