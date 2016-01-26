<!doctype HTML>
<html
<head>
    <title>
        Blog Post 1
    </title>

 <!-- Jquery js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    
</head>
<body>
<div>
<#if username??>
    Welcome ${username} <a href="/logout">Logout</a> | <a href="/newpost">New Post</a>

    <p>
</#if>

<a href="/">Blog Home</a><br><br>

<h2>${post["title"]}</h2>
Posted ${post["date"]?datetime}<i> By ${post["author"]}</i><br>
<hr>
${post["body"]}
<p>
    <em>Filed Under</em>:
    <#if post["tags"]??>
        <#list post["tags"] as tag>
            <a href="/tag/${tag}">${tag}</a>
        </#list>
    </#if>
<p>
    Comments:
<ul>
    <#if post["comments"]??>
        <#assign numComments = post["comments"]?size>
            <#else>
                <#assign numComments = 0>
    </#if>
    <#if (numComments > 0)>
        <#list 0 .. (numComments -1) as i>
            <form action="/like" method="POST">
                <input type="hidden" name="permalink", value="${post["permalink"]}">
                <input type="hidden" name="comment_ordinal", value="${i}">
                Author: ${post["comments"][i]["author"]}<br>
                Likes: ${post["comments"][i]["num_likes"]} <input type="submit" value="Like"></form>
            <br>
            ${post["comments"][i]["body"]}<br>
            <hr>
        </#list>
    </#if>
    <h3>Add a comment</h3>

    <form action="/newcomment" method="POST">
        <input type="hidden" name="permalink", value="${post["permalink"]}">
        ${errors!""}<br>
        <b>Name</b> (required)<br>
        <input type="text" name="commentName" size="60" value="${comment["name"]}"><br>
        <b>Email</b> (optional)<br>
        <input type="text" name="commentEmail" size="60" value="${comment["email"]}"><br>
        <b>Comment</b><br>
        <textarea name="commentBody" cols="60" rows="10">${comment["body"]}</textarea><br>
        <input type="submit" value="Submit">
    </form>
</ul>
</div>
</body>
</html>


