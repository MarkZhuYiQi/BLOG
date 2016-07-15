<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/14/2016
 * Time: 9:18 AM
 */

namespace framework\libs\addons;
use framework\libs\core as core;
use framework\libs\addons as addons;
class image
{
    private $file;      //图片绝对地址
    private $width;
    private $height;
    private $type;
    private $img;       //图片句柄
    private $new;



    function __construct($file)
    {
        $this->file=$_SERVER["DOCUMENT_ROOT"].$file;            //图片绝对路径
        list($this->width,$this->height,$this->type)=getimagesize($this->file);
        $this->img=$this->getFromImage();
    }

    function getThumb($new_width=0,$new_height=0){
        if(empty($new_width)&&empty($new_height)){
            $new_width=$this->width;
            $new_height=$this->height;
        }
        if(!is_numeric($new_width)||!is_numeric($new_height)){
            $new_width=$this->width;
            $new_height=$this->height;
        }

        $n_w=$new_width;
        $n_h=$new_height;

        //这个语句跑完，图片可以完整的塞进画布中，最大边适应。
        if($this->width<$this->height){
            $new_width=($new_height/$this->height)*$this->width;
        }else{
            $new_height=($new_width/$this->width)*$this->height;
        }

        $cut_width=0;
        $cut_height=0;
        if($new_width<$n_w){
            $r=$n_w/$new_width;
            $new_height*=$r;
            $new_width*=$r;
            $cut_height=($new_height-$n_h)/2;
        }
        if($new_height<$n_h){
            $r=$n_h/$new_height;
            $new_width*=$r;
            $new_height*=$r;
            $cut_width=($new_width-$n_w)/2;
        }
        $this->new=imagecreatetruecolor($n_w,$n_h);
        imagecopyresampled($this->new,$this->img,0,0,$cut_width,$cut_height,$new_width,$new_height,$this->width,$this->height);
    }

    private function getFromImage(){
        switch($this->type){
            case "1":
                $img=imagecreatefromgif($this->file);
                break;
            case "2":
                $img=imagecreatefromjpeg($this->file);
                break;
            case "3":
                $img=imagecreatefrompng($this->file);
                break;
            default:
                addons\tool::alertBack("file type does not support!");
                break;
        }
        return $img;
    }
    function out(){
        imagepng($this->new,$this->file);
        imagedestroy($this->img);
        imagedestroy($this->new);
    }
}