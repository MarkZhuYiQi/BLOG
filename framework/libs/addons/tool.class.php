<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/7/11
 * Time: 22:16
 */

namespace framework\libs\addons;


class tool
{
    public static function alertBack($info){
        echo "<script type='text/javascript'>alert('".$info."');history.back();</script>";
        exit();
    }
    public static function alertClose($info){
        echo "<script type='text/javascript'>alert('".$info."');close();</script>";
    }
    public static function alertLocation($url,$info=""){
        if(!empty($info)){
            echo "<script type='text/javascript'>alert('".$info."');location.href='".$url."';</script>";
        }else {
            header("Location:$url");
        }
    }
    public static function alertOpenClose($info,$path){
        echo "<script type='text/javascript'>
alert('$info');
opener.document.getElementById('uploadPath').value='$path';
opener.document.getElementById('thumbnail').src='$path';
opener.document.getElementById('thumbnail').style.display='block';
window.close();
</script>";
    }

}