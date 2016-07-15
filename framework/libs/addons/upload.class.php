<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/14/2016
 * Time: 9:17 AM
 */

namespace framework\libs\addons;


class upload
{
    private $error;     //错误代码
    private $typeArr=array("image/jpeg","image/pjpeg","image/png","img/x-png","img/gif");
    private $type;      //图片类型
    private $name;
    private $tmp;
    private $todayDir;              //相对根目录的今日目录
    private $today;                 //今日绝对目录
    private $newName;               //文件名
    private $uploadFilePath;        //实时文件绝对路径


    function __construct($file,$maxsize)
    {
        $this->maxsize=$maxsize/1024;
        $this->error=$_FILES[$file]["error"];
        $this->type=$_FILES[$file]["type"];
        $this->name=$_FILES[$file]["name"];
        $this->tmp=$_FILES[$file]["tmp_name"];
        $this->todayDir="/".date('Ymd');
        $this->today=UPLOAD_PATH.$this->todayDir;

        $this->checkError();
        $this->checkType();
        $this->checkPath();
        $this->setNewName();
        $this->moveUpload();
    }

    function getPath(){
        $path=$_SERVER["SCRIPT_NAME"];
        $dir=dirname(dirname($path));
        var_dump($dir);
        if($dir=="\\")$dir="/";
        $linkPath=$dir.UPLOAD_DIR.$this->todayDir."/".$this->newName;
        return $linkPath;

    }
    function moveUpload(){
        if(is_uploaded_file($this->tmp)){
            if(!move_uploaded_file($this->tmp,$this->uploadFilePath)){
                tool::alertBack("upload failed!");
            }
        }else{
            tool::alertBack("warning!upload file does not exist!");
        }
    }

    function setNewName(){
        $namesArr=explode(".",$this->name);
        $suffix=$namesArr[count($namesArr)-1];
        $this->newName=date("YmdHis").mt_rand(100,1000).".".$suffix;
        $this->uploadFilePath=$this->today."/".$this->newName;
    }

    function checkPath(){
        if(!is_dir(UPLOAD_PATH)||!is_writable(UPLOAD_PATH)){
            if(!mkdir(UPLOAD_PATH,"0777")){
                tool::alertBack("WARNING!create uploadPath error!");
            }
        }
        if(!is_dir($this->today)||!is_writable($this->today)){
            if(!mkdir($this->today,"0777")){
                tool::alertBack("WARNING!today dir create failed!");
            }
        }
    }
    function checkType(){
        if(!in_array($this->type,$this->typeArr)){
            tool::alertBack("upload file type error:".$this->type);
        }
    }
    function checkError(){
        if(!empty($this->error)){
            switch($this->error){
                case "1":
                    tool::alertBack("WARNING!the uploading size is larger than the upload max filesize");
                    break;
                case "2":
                    tool::alertBack("WARNING!the uploading size is larger than the $this->maxsize");
                    break;
                case "3":
                    tool::alertBack("WARNING!the uploading file corrupted!");
                    break;
                case "4":
                    tool::alertBack("WARNING!nothing uploaded!");
                    break;
            }
        }
    }

}

