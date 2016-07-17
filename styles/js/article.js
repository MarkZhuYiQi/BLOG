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
addLoadEvent(addImgClass);

