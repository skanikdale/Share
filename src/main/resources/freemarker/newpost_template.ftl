<!doctype HTML>
<html>
<head>
    <title>Create a new post</title>

 <!-- Jquery js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    
</head>
<body>
<#if username??>
    Welcome ${username} <a href="/logout">Logout</a> | <a href="/">Blog Home</a>

    <p>
</#if>
<form action="/newpost" method="POST">
    ${errors!""}
    <h2>Title</h2>
    <input type="text" name="subject" size="120" value="${subject!""}"><br>

    <h2>Blog Entry
        <h2>
            <textarea name="body" cols="120" rows="20">${body!""}</textarea><br>

            <h2>Tags</h2>
            Comma separated, please<br>
            <input type="text" name="tags" size="120" value="${tags!""}"><br>

            <p>
                <input type="submit" value="Submit">

</body>
</html>

