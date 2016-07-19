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
    public static function htmlCovert($string){
        if(isset($string)){
            if(is_array($string)){
                foreach($string as $key=>$value){
                    $string[$key]=self::htmlCovert($value);
                }
                return $string;
            }else{
                return htmlspecialchars($string);
            }
        }else{
            self::alertBack("nothing found to convert");
        }
    }

    /**
     * $value前加上&表示直接对数组的源操作，否则只是修改了$value数组而并没有改变$string数组的值
     * @param $string
     * @param $field
     * @param $length
     * @param string $encoding
     * @return string
     */
    public static function cutString($string,$field,$length,$encoding="utf-8"){
        if(isset($string)){
            if(is_array($string)){
                foreach($string as $key=>&$value){
                    if(mb_strlen($value[$field],$encoding)>20){
                        $value[$field]=mb_substr($value[$field],0,$length,$encoding)."...";
                    }
                }
                return $string;
            }else{
                return mb_substr($string,0,$length,$encoding);
            }
        }else{
            self::alertBack("nothing found to convert");
        }
    }
}