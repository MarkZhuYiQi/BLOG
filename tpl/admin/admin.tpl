<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>admin</title>
    <link rel="stylesheet" href="{$css_path}/bootstrap.css">
    <link rel="stylesheet" href="{$css_path}/admin.css">
    <!--<link rel="stylesheet" href="../styles/css/bootstrap.css">-->
    <!--<link rel="stylesheet" href="../styles/css/admin.css">-->
</head>
<body>
    <header>
        <h2>Welcome to BLOG background</h2>
    </header>
    <div class="function">
        <ul class="nav navbar-nav">
            <li class="active dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">用户管理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">添加用户</a></li>
                    <li><a href="#">修改用户</a></li>
                    <li><a href="#">删除用户</a></li>
                </ul>
            </li>
            <li>
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">文章管理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">添加文章</a></li>
                    <li><a href="#">修改文章</a></li>
                    <li><a href="#">删除文章</a></li>
                </ul>
            </li>
            <li>
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">评论管理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">评论审核</a></li>
                    <li><a href="#">删除评论</a></li>
                </ul>
            </li>
            <li><a href="#">退出</a></li>
        </ul>
        <p class="user">您好，red_026</p>
    </div>
    <script type="text/javascript" src="{$css_path}/jquery.js"></script>
    <script type="text/javascript" src="{$css_path}/bootstrap.js"></script>
</body>
</html>