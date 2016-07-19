<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>admin</title>
    <link rel="stylesheet" href="{$css_path}/bootstrap.css">
    <link rel="stylesheet" href="{$css_path}/admin.css">
    <!--<link rel="stylesheet" href="../styles/css/bootstrap.css">-->
    <!--<link rel="stylesheet" href="../styles/css/admin.css">-->
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
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
                <th>Title</th>
                <th>Nav</th>
                <th>Author</th>
                <th>From</th>
                <th>Type</th>
                <th>Keyword</th>
                <th>Content</th>
                <th>Info</th>
                <th>Thumbnail</th>
                <th>Date</th>
                <th>Operation</th>
            </tr>
            </thead>
            <tbody>
            {if $allInfo}
                {foreach $allInfo as $info}
                <tr>
                    <td>{$info.id}</td>
                    <td>{$info.title}</td>
                    {*<td>{$info.nav}</td>*}
                    <td></td>
                    <td>{$info.author}</td>
                    <td>{$info.from}</td>
                    <td>{$info.type}</td>
                    <td>{$info.keyword}</td>
                    <td>{$info.content}</td>
                    <td>{$info.info}</td>
                    <td><a target="_blank" href="{$info.thumbnail}">click to check</a></td>
                    <td>{$info.date}</td>
                    <td>
                        <a href="admin.php?controller=admin&method=modifyArticle&id={$info.id}" class="btn btn-danger btn-xs">Modify</a>
                        <a href="admin.php?controller=admin&method=deleteArticle&id={$info.id}" class="btn btn-danger btn-xs">Delete</a>
                    </td>
                </tr>
                {/foreach}
            {else}
                <tr><td colspan="12">no content</td></tr>
            {/if}
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
        <form class="modify" action="admin.php?controller=admin&method=addArticle" method="post">
            <dl>
                <dt>
                <h2>添加文章</h2>
                </dt>
                <dd>
                    <label for="nav">Navigator:</label>
                    <input type="text" class="form-control" placeholder="Navigator" name="nav" />
                </dd>
                <dd>
                    <label for="Title">Title:</label>
                    <input type="text" class="form-control" placeholder="Title" name="title" />
                </dd>
                <dd>
                    <label for="author">Author:</label>
                    <input type="text" class="form-control" placeholder="Author" name="author" />
                </dd>
                <dd>
                    <label for="from">From:</label>
                    <input type="text" class="form-control" placeholder="From" name="from" />
                </dd>
                <dd>
                    <label for="type">Type:</label>
                    <input type="text" class="form-control" placeholder="type" name="type" />
                </dd>
                <dd>
                    <label for="keyword">Keyword:</label>
                    <input type="text" class="form-control" placeholder="KeyWord" name="keyword" /> <span>split by ","</span>
                </dd>
                <dd>
                    <label for="content">Content:</label>
                    <textarea name="content" id="TextArea1" cols="30" rows="10" class="ckeditor"></textarea>
                </dd>
                <dd>
                    <label for="info">Info:</label>
                    <input type="text" class="form-control" placeholder="info" name="info" />
                </dd>

                <dd>
                    <label for="thumbnail">thumbnail:</label>
                    <input type="hidden" id="operation" value="add" />
                    <input type="text" class="form-control" name="thumbnail" id="uploadPath" readonly="readonly" />
                    <input type="button" value="uploadImage" class="btn btn-danger" id="uploadImage" />
                    <img src="" class="img-thumbnail" alt="" style="display: none;" id="thumbnail" />
                </dd>
                <dd>
                    <label for="readlimit">readlimit:</label>
                    <div class="radios">
                        <label class="radio-inline">
                            <input type="radio" name="readlimit" value="0" checked="checked">no limits
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="readlimit" value="1">exclude Visitor
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="readlimit" value="3">exclude user
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="readlimit" value="4">exclude VIP
                        </label>
                    </div>
                </dd>
                <dd>
                    <label for="comment">Comment:</label>
                    <div class="radios">
                        <label class="radio-inline">
                            <input type="radio" name="comment" value="0" checked="checked">allow
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="comment" value="1">forbit
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
        <form class="modify" action="admin.php?controller=admin&method=modifyArticle" method="post">
            <input type="hidden" value="{$info.id}" name="id"/>
            <dl>
                <dt>
                <h2>修改文章</h2>
                </dt>
                <dd>
                    <label for="nav">Navigator:</label>
                    <input type="text" class="form-control" placeholder="Navigator" name="nav" />
                </dd>
                <dd>
                    <label for="Title">Title:</label>
                    <input type="text" class="form-control" placeholder="Title" name="title" value="{$info.title}" />
                </dd>
                <dd>
                    <label for="author">Author:</label>
                    <input type="text" class="form-control" placeholder="Author" name="author" value="{$info.author}"/>
                </dd>
                <dd>
                    <label for="from">From:</label>
                    <input type="text" class="form-control" placeholder="From" name="from" value="{$info.from}" />
                </dd>
                <dd>
                    <label for="type">Type:</label>
                    <input type="text" class="form-control" placeholder="type" name="type" value="{$info.type} "/>
                </dd>
                <dd>
                    <label for="keyword">Keyword:</label>
                    <input type="text" class="form-control" placeholder="KeyWord" name="keyword" value="{$info.keyword}"/> <span>split by ","</span>
                </dd>
                <dd>
                    <label for="content">Content:</label>
                    <textarea name="content" id="TextArea1" cols="30" rows="10" class="ckeditor">{$info.content}</textarea>
                </dd>
                <dd>
                    <label for="info">Info:</label>
                    <input type="text" class="form-control" placeholder="info" name="info" value="{$info.info}" />
                </dd>

                <dd>
                    <label for="thumbnail">thumbnail:</label>
                    <input type="hidden" id="operation" value="add" />
                    <input type="text" class="form-control" name="thumbnail" id="uploadPath" readonly="readonly" value="{$info.thumbnail}" />
                    <input type="button" value="uploadImage" class="btn btn-danger" id="uploadImage" />
                    <img src="{$info.thumbnail}" class="img-thumbnail" alt="" style="display: block;" id="thumbnail" />
                </dd>
                <dd>
                    <label for="readlimit">readlimit:</label>
                    <input type="hidden" value="{$info.readlimit}" />
                    <div class="radios">
                        <label class="radio-inline">
                            <input type="radio" name="readlimit" value="0" checked="checked">no limits
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="readlimit" value="1">exclude Visitor
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="readlimit" value="3">exclude user
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="readlimit" value="4">exclude VIP
                        </label>
                    </div>
                </dd>
                <dd>
                    <label for="comment">Comment:</label>
                    <input type="hidden" value="{$info.comment}" />
                    <div class="radios">
                        <label class="radio-inline">
                            <input type="radio" name="comment" value="0" checked="checked">allow
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="comment" value="1">forbit
                        </label>
                    </div>
                </dd>
                <dd>
                    <input type="submit" class="btn btn-danger submit" name="modify" value="modify" />
                </dd>
            </dl>
        </form>
    {/if}
    <script type="text/javascript" src="{$js_path}/jquery.js"></script>
    <script type="text/javascript" src="{$js_path}/bootstrap.js"></script>
    <script type="text/javascript" src="{$js_path}/global.js"></script>
    <script type="text/javascript" src="{$js_path}/admin_articleList.js"></script>

</body>
</html>