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
    var button=document.getElementById("uploadImage");
    button.onclick=centerWindow("../tpl/upfile.html","uploadImage",400,100);
}
addLoadEvent(upload);