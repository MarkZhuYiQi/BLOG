/**
 * Created by Administrator on 2016/7/17.
 */
function centerWindow(url,name,width,height){
    var left=(screen.width-width)/2;
    var top=(screen.top-height)/2;
    window.open(url,name,"height="+height+",width="+width+",top="+top+",left="+left);
};
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
function addClass(element,value){
    if(!element.className){
        element.className=value;
    }else{
        var newClassName=element.className;
        newClassName+=" ";
        newClassName+=value;
        element.className=newClassName;
    }
}
function insertAfter(newElement,targetElement){
    var parent=targetElement.parentNode;
    if(parent.lastChild==targetElement){
        parent.appendChild(newElement);
    }else{
        parent.insertBefore(newElement,targetElement.nextSibling);
    }
}
function getUrl(){
    if(!document.getElementById("presentUrl"))return false;
    var input=document.getElementById("presentUrl");
    input.setAttribute("value",window.location);
}
addLoadEvent(getUrl);
function focusOnLogin(){
    if(!document.getElementById("login"))return false;
    var login=document.getElementById("login");
    login.onclick=function(){
        document.getElementById("username").focus();
    };
}
addLoadEvent(focusOnLogin);
