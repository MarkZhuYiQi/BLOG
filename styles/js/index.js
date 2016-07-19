/**
 * Created by szl4zsy on 7/19/2016.
 */
function focusOnLogin(){
    var login=document.getElementById("login");
    login.onclick=function(){
        document.getElementById("username").focus();
    };
}
addLoadEvent(focusOnLogin);
