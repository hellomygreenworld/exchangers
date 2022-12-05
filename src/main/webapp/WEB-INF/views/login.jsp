<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.104.2">
	<title>Signin Template · Bootstrap v5.2</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<meta name="theme-color" content="#712cf9">

	<%-- <style>
	.bd-placeholder-img {
		font-size: 1.125rem;
		text-anchor: middle;
		-webkit-user-select: none;
		-moz-user-select: none;
		user-select: none;
	}

	@media (min-width: 768px) {
		.bd-placeholder-img-lg {
		font-size: 3.5rem;
		}
	}

	.b-example-divider {
		height: 3rem;
		background-color: rgba(0, 0, 0, .1);
		border: solid rgba(0, 0, 0, .15);
		border-width: 1px 0;
		box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
	}

	.b-example-vr {
		flex-shrink: 0;
		width: 1.5rem;
		height: 100vh;
	}

	.bi {
		vertical-align: -.125em;
		fill: currentColor;
	}

	.nav-scroller {
		position: relative;
		z-index: 2;
		height: 2.75rem;
		overflow-y: hidden;
	}

	.nav-scroller .nav {
		display: flex;
		flex-wrap: nowrap;
		padding-bottom: 1rem;
		margin-top: -1px;
		overflow-x: auto;
		text-align: center;
		white-space: nowrap;
		-webkit-overflow-scrolling: touch;
	}
	</style> --%>
</head>
<body class="text-center">
	<div class="container-sm row" style="float:none; margin:200 auto">
	<div class="col-md-3" style="float: none; margin:0 auto;">
		<main class="form-signin w-100 m-auto">
				<form>
					<img class="mb-4" src="resources/logo.jpeg" alt="" width="72" height="57">
					<h1 class="h3 mb-3 fw-normal">Please sign in</h1>
					<div class="form-floating">
					<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="userEmail">
					<label for="floatingInput">Email address</label>
					</div>
					<div class="form-floating">
					<input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="userPassword">
					<label for="floatingPassword">Password</label>
					</div>
					<div class="checkbox mb-3">
					<label>
						<input type="checkbox" value="remember-me"> Remember me
					</label>
					</div>
					<button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
					<p class="mt-5 mb-3 text-muted">&copy; 2017–2022</p>
				</form>
		</main>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<%-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script> --%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
    <script  type="text/javascript">
    var user_id = "<%=(String)session.getAttribute("user_id")%>";
    function logout(){
        window.location.href = "logout.php";
        }
    </script>
</head>


<body style="background:gray">
<script>
if (user_id == null){</script>
<div style="background:white;margin:-12px -0.5% 0px -20px; text-align:center;height:80px; border: 1px solid">
<h2>로그인 페이지</h2></div>
 <div style="position:absolute; top:50%; left:50%; width:19%; height:80px; margin:-80px 0px 0px -200px; border:1px solid;">
  <form name="login" method="post" action="./login_check.jsp">
            아이디 : <input type="text" name="user_id"/><br />
            패스워드 : <input type="password" name="user_pw" /><br />
            <input type="submit" value="로그인">
  </form>
     <br>
     <a href="../main.html">맨 처음 페이지로</a>&nbsp;&nbsp;&nbsp;&nbsp;
     <a href="./new_join.html">회원가입</a>
 </div><br>
 <script>} else {
	 alert("이미 로그인 된 상태입니다.");
 	document.location.href="./board_list.jsp";
 }</script>
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 <script src="js/bootstrap.js"></script>
</body>
</html>
