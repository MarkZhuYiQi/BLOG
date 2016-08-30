/**
 * Created by SZL4ZSY on 8/30/2016.
 */
$(document).ready(function(){
    $("#sidebar .content").hide();

    //切换不同的菜单
    $("#sidebar .btn-danger").click(function(){
        var btnIndex=this.parentNode.parentNode.parentNode;
        for(var i=0;i<btnIndex.parentNode.children.length;i++){
            if($(btnIndex).index()==i){    //如果是当前点击目标
                $("#sidebar .content").eq(i).slideToggle();
            }else{
                $("#sidebar .content").eq(i).slideUp();
            }
        }
    });
    //按钮按下之后记忆锁定
    $("#sidebar dd button").click(function(){
        $("#sidebar dd button").removeClass("active");
        $(this).addClass("active");
        // $("#main").load("test2.html");
        $.get("test.php?fuck=suck&mark=yinxiong",function(data,status){
            $("#main").html(data+status);
        });
        $.post("test.php",{
            name:"mark",
            age:26,
            status:"he is destorying his life every day."
        },function(data){
            $("#main").html($("#main").html()+"\n"+data);
        });
    });



});