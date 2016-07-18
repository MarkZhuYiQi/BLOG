/**
 * Created by Administrator on 2016/7/14.
 */
function uploadArticle(){
    if(!document.getElementById("uploadImage"))return false;
    var button=document.getElementById("uploadImage");
    var op=document.getElementById("operation");
    button.onclick=function(){
        centerWindow("../admin/upfile.php?type=article&operation="+op.value,"uploadImage",400,200);
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
addLoadEvent(uploadArticle);