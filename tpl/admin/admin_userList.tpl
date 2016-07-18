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
                {*<td><a href="{$info.face}">{$info.face}</a></td>*}
                <td><a href="{$info.face}">click to check</a></td>
                <td>{$info.authority}</td>
                <td>{$info.date}</td>
                <td>
                    <a href="admin.php?controller=admin&method=modifyUser&id={$info.id}" class="btn btn-danger btn-xs">Modify</a>
                    <a href="admin.php?controller=admin&method=deleteUser&id={$info.id}" class="btn btn-danger btn-xs">Delete</a>
                </td>
            </tr>
            {/foreach}
            </tbody>
        </table>

        <div class="page text-center">
            {if $showPage}
                {$nav}
            {/if}
        </div>
    </div>
    {/if}

    {if $add}
    <form class="modify" action="admin.php?controller=admin&method=addUser" method="post">
        <dl>
            <dt>
            <h2>添加用户</h2>
            </dt>
            <dd>
                <label for="username">UserName:</label>
                <input type="text" class="form-control" placeholder="UserName" name="username" />
            </dd>
            <dd>
                <label for="password">Password:</label>
                <input type="password" class="form-control" placeholder="password" name="password" />
            </dd>
            <dd>
                <label for="confirmPassword">re-input:</label>
                <input type="password" class="form-control" placeholder="re-input password" name="confirmPassword" />
            </dd>
            <dd>
                <label for="email">email:</label>
                <input type="email" class="form-control" placeholder="email" name="email" />
            </dd>
            <dd>
                <label for="question">question</label>
                <input type="text" class="form-control" placeholder="question" name="question" />
            </dd>
            <dd>
                <label for="answer">answer:</label>
                <input type="password" class="form-control" placeholder="answer" name="answer" />
            </dd>

            <dd>
                <label for="face">face:</label>
                <input type="hidden" id="operation" value="add" />
                <input type="text" class="form-control" name="face" id="uploadPath" readonly="readonly" />
                <input type="button" value="uploadImage" class="btn btn-danger" id="uploadImage" />
                <img src="" class="img-thumbnail" alt="" style="display: none;" id="thumbnail" />
            </dd>
            <dd>
                <label for="authority">Authority:</label>
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
        <form class="modify" action="admin.php?controller=admin&method=modifyUser" method="post">
            <input type="hidden" name="id" value="{$info.id}">
            <dl>
                <dt>
                <h2>修改用户</h2>
                </dt>
                <dd>
                    <label for="username">UserName:</label>
                    <input type="text" class="form-control" placeholder="username" name="username" value="{$info.username}" />
                </dd>
                <dd>
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" placeholder="password" name="password" />
                </dd>
                <dd>
                    <label for="confirmPassword">re-input:</label>
                    <input type="password" class="form-control" placeholder="re-input password" name="confirmPassword" />
                </dd>
                <dd>
                    <label for="email">email:</label>
                    <input type="email" class="form-control" placeholder="email" name="email" value="{$info.email}" />
                </dd>
                <dd>
                    <label for="question">question</label>
                    <input type="text" class="form-control" placeholder="question" name="question" value="{$info.question}" />
                </dd>
                <dd>
                    <label for="answer">answer:</label>
                    <input type="password" class="form-control" placeholder="answer" name="answer" value=""/>
                </dd>

                <dd>
                    <label for="face">face:</label>
                    <input type="hidden" id="operation" value="modify" />

                    <input type="text" class="form-control" name="face" id="uploadPath" readonly="readonly" value="{$info.face}" />
                    <input type="button" value="uploadImage" class="btn btn-danger" id="uploadImage" />
                    <img src="{$info.face}" class="img-thumbnail" alt="" style="display: none;" id="thumbnail" />
                </dd>
                <dd>
                    <label for="authority">Authority:</label>
                    <div class="radios" id="authority">
                        <input type="hidden" value="{$info.authority}" id="radiosValue">
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
                    <input type="submit" class="btn btn-danger submit" name="modify" value="modify">
                </dd>
            </dl>
        </form>
    {/if}
    <script type="text/javascript" src="{$js_path}/jquery.js"></script>
    <script type="text/javascript" src="{$js_path}/bootstrap.js"></script>
    <script type="text/javascript" src="{$js_path}/global.js"></script>
    <script type="text/javascript" src="{$js_path}/admin_userList.js"></script>
</body>
</html>