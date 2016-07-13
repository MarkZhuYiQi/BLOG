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
    <div class="navigator">
        <ol class="breadcrumb">
            <li><a href="admin.php?controller=admin&method=index">index</a></li>
            <li><a href="admin.php?controller=admin&method=userList"><strong>UserList</strong></a></li>
            {*{$subtitle}*}
        </ol>
    </div>
    {if $show}
    <div class="userInfo">
        <table class="table table-hover text-center">
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
                    <a href="admin.php?controller=admin&method=modifyUser&id={$info.id}" class="btn btn-danger">Modify</a>
                    <a href="admin.php?controller=admin&method=deleteUser&id={$info.id}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
    {/if}

    {if $add}
    <form class="modify" action="admin.php?controller=admin&method=modify" method="post">
        <dl>
            <dt>
            <h2>添加用户</h2>
            </dt>
            <dd>
                <label for="username">UserName:</label>
                <input type="text" class="form-control" placeholder="username" name="username" />
            </dd>
            <dd>
                <label for="password">Password:</label>
                <input type="text" class="form-control" placeholder="password" name="password" />
            </dd>
            <dd>
                <label for="confirmPassword">re-input:</label>
                <input type="text" class="form-control" placeholder="re-input password" name="confirmPassword" />
            </dd>
            <dd>
                <label for="username">email:</label>
                <input type="text" class="form-control" placeholder="email" name="email" />
            </dd>
            <dd>
                <label for="question">question</label>
                <input type="text" class="form-control" placeholder="question" name="question" />
            </dd>
            <dd>
                <label for="answer">answer:</label>
                <input type="text" class="form-control" placeholder="answer" name="answer" />
            </dd>

            <dd>
                <label for="face">face:</label>
                <input type="text" class="form-control" name="face" id="face" />
            </dd>
            <dd>
                <label for="face">Authority:</label>
                <div class="radios">
                    <label class="radio-inline">
                        <input type="radio" name="authority" value="1">adminstrator
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="authority" value="2">VIP
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="authority" value="3">user
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="authority" value="4">visitor
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="authority" value="5">WANTED
                    </label>
                </div>
            </dd>
            <dd>
                <input type="submit" class="btn btn-danger submit" name="submit">
            </dd>
        </dl>
    </form>
    {/if}
    {if $modify}
        <form class="modify" action="admin.php?controller=admin&method=modify" method="post">
            <dl>
                <dt>
                <h2>个人资料</h2>
                </dt>
                <dd>
                    <label for="username">UserName:</label>
                    <input type="text" class="form-control" placeholder="username" name="username" value="{$info.username}"/>
                </dd>
                <dd>
                    <label for="username">email:</label>
                    <input type="text" class="form-control" placeholder="email" name="email" value="{$info.email}"/>
                </dd>
                <dd>
                    <label for="face">face:</label>
                    <input type="text" class="form-control" name="face" value="{$info.face}"/>
                </dd>
                <dd>
                    <label for="face">Authority:</label>
                    <div class="radios">
                        <label class="radio-inline">
                            <input type="radio" name="authority" value="1">adminstrator
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="authority" value="2">VIP
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="authority" value="3">user
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="authority" value="4">visitor
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="authority" value="5">WANTED
                        </label>
                    </div>
                </dd>
                <dd>
                    <label for="date">Date</label>
                    <input type="text" readonly="readonly" class="form-control" name="date" value="{$info.date}" />
                </dd>
                <dd>
                    <input type="submit" class="btn btn-danger submit" name="submit">
                </dd>
            </dl>
        </form>
    {/if}
    <script type="text/javascript" src="{$js_path}/jquery.js"></script>
    <script type="text/javascript" src="{$js_path}/bootstrap.js"></script>
</body>
</html>