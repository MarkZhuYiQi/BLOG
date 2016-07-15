<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>上传文件</title>
</head>
<body>
    <form action="admin.php?controller=image&method=upload" method="post" enctype="multipart/form-data">
        <input type="hidden" name="type" value="<?php echo $_GET["type"]?>">
        <input type="hidden" name="MAX_FILE_SIZE" value="2048000" />
        <input type="file" name="pic" />
        <input type="submit" name="send" value="upload!">
    </form>
</body>
</html>