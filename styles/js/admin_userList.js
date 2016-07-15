/**
 * Created by Administrator on 2016/7/14.
 */
function addLoadEvent(func){
    var oldonload=window.onload;
    if(typeof(window.onload)!="function"){
        window.onload=func();
    }else{
        window.onload=function(){
            oldonload();
            func();
        }
    }
}
function centerWindow(url,name,width,height){
    var left=(screen.width-width)/2;
    var top=(screen.top-height)/2;
    window.open(url,name,"height="+height+",width="+width+",top="+top+",left="+left);
};
function upload(){
    if(!document.getElementById("uploadImage"))return false;
    var button=document.getElementById("uploadImage");
    var op=document.getElementById("operation");
    button.onclick=function(){
        centerWindow("../admin/upfile.php?type=face&operation="+op.value,"uploadImage",400,200);
    }
}
addLoadEvent(upload);