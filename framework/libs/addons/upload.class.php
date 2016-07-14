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
    private $today;
    private $newName;               //文件名
    private $uploadFilePath;        //实时文件路径


    function __construct($file,$maxsize)
    {
        $this->maxsize=$maxsize/1024;
        $this->error=$_FILES[$file]["error"];
        $this->type=$_FILES[$file]["type"];
        $this->name=$_FILES[$file]["name"];
        $this->tmp=$_FILES[$file]["tmp_name"];
        $this->today=UPLOAD_PATH."/".date('Ymd');

        $this->checkError();
        $this->checkType();
        $this->checkPath();
        $this->setNewName();
        $this->moveUpload();
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
        $this->newName=date("YmdHis").mtrand(100,1000).".".$suffix;
        $this->uploadFilePath=$this->today."/".$this->newName;
    }

    function checkPath(){
        if(!is_dir($this->path)||!is_writable($this->path)){
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
        if(!in_array($this->type,$this->type)){
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

