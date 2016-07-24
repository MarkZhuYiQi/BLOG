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
    var textArea=document.getElementById("TextArea1");

/*
    //加一层闭包，i以参数形式传给内层函数
    for(var i=0;i<replys.length;i++){
        if(!textArea){
            (function(arg){
                replys[arg].onclick=function(){
                    alert(arg);
                    document.getElementById("username").onfocus();
                };
            })(i);
        }else{
            (function(arg){
                replys[arg].onclick=function(){
                    alert(name[arg].innerHTML);
                    console.log(name);
                    textArea.innerHTML="对"+name[arg].innerHTML+"说道:";
                }
            })(i);
        }
    }
*/

    //局部变量形式传参到内层函数
    for(var i=0;i<replys.length;i++){
        if(!textArea){
            (function(){
                var temp=i;
                replys[i].onclick=function(){
                    document.getElementById("username").focus();
                }
            })();
        }else{
            (function(){
                var temp=i;
                replys[i].onclick=function(){
                    alert(temp);
                    textArea.innerHTML="对"+name[temp].innerHTML+"说道:";
                }
            })();
        }
    }

}

addLoadEvent(addImgClass);
addLoadEvent(replyFunc);