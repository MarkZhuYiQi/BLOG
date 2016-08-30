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
        // alert($(this).attr("href"));
        $.get($(this).attr("href"),function(data){
            $("#main").html(data);
        });
    });

});