<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/15/2016
 * Time: 1:09 PM
 */

namespace libs\Controller;
use framework\libs\core as core;
use framework\libs\addons as addons;

class imageController
{
    public function __construct()
    {
        addons\validate::checkSession();
    }

    public function upload()
    {
        if (isset($_POST["send"])) {
            switch ($_POST["type"]) {
                case "face":
                    $width = 150;
                    $height = 150;
                    $info = "face upload success!";
                    break;
                case "article":
                    $width=620;
                    $height=350;
                    $info="thumbnail upload success!";
                    break;
                default:
                    addons\tool::alertBack("upload illegal opertaion!");
            }
            $upload = new addons\upload("pic", $_POST["MAX_FILE_SIZE"]);
            $path = $upload->getPath();
            $thumbnail=new addons\image($path);
            $thumbnail->getThumb($width,$height);
            $thumbnail->out();
            addons\tool::alertOpenClose($info, $path);
        } else {
            addons\tool::alertBack("file size overflow or other errors!");
        }
    }
    public function ckeUpload(){
        $width=620;
        $height=350;
        //这里的上传名称upload是上传的名字
        $upload = new addons\upload("upload", $_POST["MAX_FILE_SIZE"]);
        $ckefn = $_GET['CKEditorFuncNum'];
        $path = $upload->getPath();
        $thumbnail=new addons\image($path);
        $thumbnail->getThumb($width,$height);
        $thumbnail->out();
        echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($ckefn,\"$path\",'图片上传成功！');</script>";
        exit();
    }
}