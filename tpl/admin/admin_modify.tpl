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
    {include file="admin/admin_header.html"}
    <div class="modify">
        <div class="input-group">
            <span class="input-group-addon">Name:</span>
            <input type="text" class="form-control" placeholder="username" name="username" />
        </div>
        <div class="input-group">
            <span class="input-group-addon">email:</span>
            <input type="text" class="form-control" placeholder="email" name="email" />
        </div>
        <div class="input-group">
            <span class="input-group-addon">face:</span>
            <input type="text" class="form-control" name="face" />
        </div>
        <div class="input-group">
            <span class="input-group-addon">Authority:</span>
            <input type="text" class="form-control" name="Authority" />
        </div>
        <div class="input-group">
            <span class="input-group-addon">Date:</span>
            <input type="text" class="form-control" name="date" />
        </div>

    </div>
    <script type="text/javascript" src="{$js_path}/jquery.js"></script>
    <script type="text/javascript" src="{$js_path}/bootstrap.js"></script>
</body>
</html>