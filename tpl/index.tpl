<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <title>index</title>
    <link rel="stylesheet" href="{$css_path}/bootstrap.css">
    <link rel="stylesheet" href="{$css_path}/font-awesome.css">
    <link rel="stylesheet" href="{$css_path}/basic.css">
    <link rel="stylesheet" href="{$css_path}/sidebar.css">
    <link rel="stylesheet" href="{$css_path}/index.css">
</head>
<body>
{include file="tpl/header.html"}
<div class="carousel slide" id="myCar" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCar" data-slide-to="0" class="active"></li>
        <li data-target="#myCar" data-slide-to="1"></li>
        <li data-target="#myCar" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="{$img_path}/carousel3.jpg" alt="3">
            <div class="carousel-caption">
                <h3 class="itemTitle">Lamborghini LP700</h3>
                <p></p>
            </div>
        </div>
        <div class="item">
            <img src="{$img_path}/carousel2.jpg" alt="2">
            <div class="carousel-caption">
                <h3 class="itemTitle">Audi R8</h3>
                <p></p>
            </div>
        </div>
        <div class="item">
            <img src="{$img_path}/carousel1.jpg" alt="1">
            <div class="carousel-caption">
                <h3 class="itemTitle">CIVIC</h3>
                <p></p>
            </div>
        </div>
    </div>
    <!--<a href="#myCar" class="carousel-control left" data-slide="prev"></a>-->
    <!--<a href="#myCar" class="carousel-control right" data-slide="next"></a>-->
    <a href="#myCar" class="carousel-control left" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a href="#myCar" class="carousel-control right" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>

<div>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                {if $login}
                <div class="alert alert-danger">
                    please <a href="javascript:;" class="alert-link" id="login">login</a> or <a href="#" class="alert-link">register</a> a new account to acquire all the functions!
                    <button class="close" data-dismiss="alert"><span>&times;</span></button>
                </div>
                {/if}
                {foreach $articleInfo as $info}
                <section class="newsList">
                    <h3 class="newsTitle text-center">{$info.title}</h3>
                    <div class="lgroup text-center">
                        <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-thumbs-up"></span> 108</button></button>
                        <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-tags"></span> 108</button>
                        <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-eye-open"></span> <span> {$info.readcount}</span></button>
                    </div>

                    <a href="index.php?controller=index&method=showArticleDetail&id={$info.id}">
                        <img src="{$info.thumbnail}"  alt="" class="img-responsive center-block newsImg thumbnail">
                    </a>
                    <p class="newsSummary"><a href="#">{$info.info}</a></p>
                    <a class="btn btn-danger read" href="index.php?controller=index&method=showArticleDetail&id={$info.id}">阅读全文</a>
                    <div class="date text-center">
                        <span class="month">7月</span><span class="day">29</span>
                    </div>
                    <div class="bookmark">
                        <img src="{$img_path}/bookmark.png" alt="">
                    </div>
                </section>
                {/foreach}
                <div class="page text-center">
                    {if $showPage}
                        {$nav}
                    {/if}
                </div>
            </div>
            <div class="col-md-4 rightView">
                {include file="sidebar.html"}
            </div>
        </div>
    </div>
</div>
{include file="tpl/footer.html"}
<div class="modal fade" id="code" tableindex="-1">
    <div class="modal-dialog modal-md">
        <div class="modal-body">
            <div class="container-fluid">
                <div>
                    <button class="close" data-dismiss="modal"><span>&times;</span></button>
                    <img src="{$img_path}/code.png" alt="code" class="img-responsive center-block">
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="{$js_path}/jquery.js"></script>
<script type="text/javascript" src="{$js_path}/bootstrap.js"></script>
<script type="text/javascript" src="{$js_path}/global.js"></script>
<script type="text/javascript" src="{$js_path}/index.js"></script>
</body>
</html>