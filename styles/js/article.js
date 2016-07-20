/**
 * Created by Administrator on 2016/7/17.
 */
function addImgClass(){
    var detail=document.getElementsByTagName("article");
    var img=detail[0].getElementsByTagName("img");
    for(var i=0;i<img.length;i++){
        addClass(img[i],"img-thumbnail");
        addClass(img[i],"center-block");
        addClass(img[i],"article-img");
    }
}
//这个方法兼容性有问题，最低IE版本为9
function replyFunc(){
    var textarea=document.getElementById("TextArea1");
    var replys=document.getElementsByClassName("icon-reply");
    var name=document.getElementsByClassName("username");
    for(var i=0;i<replys.length;i++){
        var j=i;
        replys[i].onclick=function(j){
            alert(j);
            textarea.innerHTML="对"+name[j].value+"说道:";

        }
    }
}
// function replyFunc(){
//     var li=document.getElementById("newestComment");
//     var labels=li.getElementsByTagName("a");
//     for(var i=0;i<labels.length;i++){
//
//     }
// }



addLoadEvent(addImgClass);
addLoadEvent(replyFunc);