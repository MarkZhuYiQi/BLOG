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
    // if(!document.getElementById("TextArea1"))return false;
    var replys=document.getElementsByClassName("icon-reply");
    var name=document.getElementsByClassName("username");
    if(!document.getElementById("TextArea1")){
        for(var i=0;i<replys.length;i++){
            replys[i].i=i;
            replys[i].onclick=focusOnLogin();
        }
    }else{
        var textarea=document.getElementById("TextArea1");
        console.log(replys);
        console.log(name);
        for(var i=0;i<replys.length;i++){
            replys[i].i=i;
            replys[i].onclick=function(){
                textarea.innerHTML="对"+name[this.i].innerHTML+"说道:";
            }
        }
    }
}



addLoadEvent(addImgClass);
addLoadEvent(replyFunc);