<!DOCTYPE html>

<html>
  <head>
    <title>Sign Up</title>
    <style type="text/css">
    html {
	background: url('http://subtlepatterns.com/patterns/wood_pattern.png');
	font-size: 10pt;
}
label {
	display: block;
	color: #999;
}
.cf:before,
.cf:after {
    content: ""; 
    display: table;
}

.cf:after {
    clear: both;
}
.cf {
    *zoom: 1;
}
:focus {
	outline: 0;
}
.loginform {
	width: 410px;
	margin: 50px auto;
	padding: 25px;
	background-color: rgba(250,250,250,0.5);
	border-radius: 5px;
    box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.2), 
    			inset 0px 1px 0px 0px rgba(250, 250, 250, 0.5);
    border: 1px solid rgba(0, 0, 0, 0.3);
}
.loginform ul {
	padding: 0;
	margin: 0;
}
.loginform li {
	display: inline;
	float: left;
}
.loginform input:not([type=submit]) {
	padding: 5px;
	margin-right: 10px;
	border: 1px solid rgba(0, 0, 0, 0.3);
	border-radius: 3px;
	box-shadow: inset 0px 1px 3px 0px rgba(0, 0, 0, 0.1), 
				0px 1px 0px 0px rgba(250, 250, 250, 0.5) ;
}
.loginform input[type=submit] {
	border: 1px solid rgba(0, 0, 0, 0.3);
	background: #64c8ef; /* Old browsers */
	background: -moz-linear-gradient(top,  #64c8ef 0%, #00a2e2 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#64c8ef), color-stop(100%,#00a2e2)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top,  #64c8ef 0%,#00a2e2 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top,  #64c8ef 0%,#00a2e2 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top,  #64c8ef 0%,#00a2e2 100%); /* IE10+ */
	background: linear-gradient(to bottom,  #64c8ef 0%,#00a2e2 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#64c8ef', endColorstr='#00a2e2',GradientType=0 ); /* IE6-9 */
	color: #fff;
	padding: 5px 15px;
	margin-right: 0;
	margin-top: 15px;
	border-radius: 3px;
	text-shadow: 1px 1px 0px rgba(0, 0, 0, 0.3);
}

    </style> 

 <!-- Jquery js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  </head>

  <body>
    Already a user? <a href="/login">Login</a><p>
    <h2>Signup</h2> 
	<section class="loginform cf">
		<form name="login" action="index_submit" method="get" accept-charset="utf-8">
			<ul>
				<li>
					<label for="usermail">Email</label>
					<input type="email" name="usermail" placeholder="yourname@email.com" required>
				</li>
				<li>
					<label for="password">Password</label>
					<input type="password" name="password" placeholder="password" required></li>
				<li>
					<input type="submit" value="Login">
				</li>
			</ul>
		</form>
	</section>

    <form method="post">
      
    </form>
  </body>

</html>
