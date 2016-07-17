/**
 * Created by Administrator on 2016/7/14.
 */
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
function checkAuth(){
    if(!document.getElementById("authority"))return false;
    var radiosValue=document.getElementById("radiosValue").value;
    var group=document.getElementById("authority");
    var radios=group.getElementsByTagName("input");
    for(var i=0;i<radios.length;i++){
        if(radios[i].value==radiosValue){
            radios[i].setAttribute("checked","checked");
        }
    }
}

addLoadEvent(checkAuth);
addLoadEvent(upload);