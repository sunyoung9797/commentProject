<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelProject/detailInfo.jsp</title>
<style>
header {
	height: 90px;
}

header>div {
	display: inline-block;
	vertical-align: middle;
}

header>div>svg {
	padding-top: 17px;
	padding-left: 45px;
}

header>div>a>img {
	padding-top: 12px;
	padding-left: 25px;
}

header>div.member {
	vertical-align: middle;
	float: right;
	color: black;
	padding-top: 15px;
	padding-right: 30px;
}

header>div>div {
	display: inline-block;
	padding-right: 30px;
}
</style>
<script src="../jquery/jquery-3.6.0.js"></script>
</head>
<body>
	<%
		String grpCd = request.getParameter("grpCd");
	%>
	
	<header>
		<div class="menuList">
				<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40"
					fill="black" class="bi bi-text-left" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
						d="M2 12.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"></path>
                </svg>
			</div>
			<div class="logo">
				<a href="main.jsp"><img src="../image/logo2.png"></a>
			</div>
			<div class="member">
				<div class="login">
					<h5>로그인</h5>
				</div>
				<div class="join">
					<h5>회원가입</h5></a>
				</div>
				<div class="confirm">
					<h5>예약확인</h5>
				</div>
			</div>
	</header>
	
	<section>
		
	</section>
	
	<footer>
		<div class="logo"></div>
			<div class="info"></div>
			<div class="address"></div>
	</footer>
	
	<script>
		let grpCd = '<%=grpCd%>';
		
		$('header').append('<h1>' + grpCd + '</h1>');
		
	</script>
</body>
</html>