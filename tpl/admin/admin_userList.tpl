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
    <div class="userInfo">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>No.</th>
                <th>user name</th>
                <th>e-mail</th>
                <th>face</th>
                <th>authority</th>
                <th>register time</th>
                <th>Operations</th>
            </tr>
            </thead>
            <tbody>
            {foreach $allInfo as $info}
            <tr>
                <td>{$info.id}</td>
                <td>{$info.username}</td>
                <td>{$info.email}</td>
                <td>{$info.face}</td>
                <td>{$info.state}</td>
                <td>{$info.date}</td>
                <td>
                    <a href="admin.php?controller=admin&method=modify" class="btn btn-danger">Modify</a>
                    <a href="admin.php?controller=admin&method=delete" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            {/foreach}
            </tbody>
        </table>
    </div>


    <script type="text/javascript" src="{$js_path}/jquery.js"></script>
    <script type="text/javascript" src="{$js_path}/bootstrap.js"></script>
</body>
</html>