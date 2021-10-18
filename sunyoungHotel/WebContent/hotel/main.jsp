<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
<script src="../jquery-3.6.0.min.js"></script>
</head>
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

section {
	padding-top:100px;
	padding-left: 130px;
    font-size: large;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
</style>

<body>
	<%
	String frDate = request.getParameter("frDate");
	String toDate = request.getParameter("toDate");
	String rooms = request.getParameter("rooms");
	String adults = request.getParameter("adults");
	String children = request.getParameter("children");
	%>


	<div>
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
			<div class="search">
				체크인&emsp;&ensp;<input type="date" name="checkin" id="checkin"><br><br>
				체크아웃&ensp;<input type="date" name="checkout" id="checkout"><br><br>
				ROOM&emsp;&ensp;<select name="room" id="room">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select><br><br>
				성인&emsp;&emsp;&ensp;<input type="text" name="adult" id="adult"><br><br>
				어린이&emsp;&ensp;<input type="text" name="kids" id="kids"><br><br>
				<input type="submit" onclick="Search()" value="SEARCH">
			</div>

		</section>
		<footer>
			<div class="logo"></div>
			<div class="info"></div>
			<div class="address"></div>
		</footer>
	</div>

	<script>
            let frDate = $('#checkin').val().replace('-','');
            let toDate = $('#checkout').val().replace('-','');
            let rooms = $('#room').val();
            let adults = $('#adult').val();
            let children =$('#kids').val();
			let id = $();
		
		function Search() {

            location.href = "bookableList.jsp?frDate=" + frDate + "&toDate=" + toDate + "&rooms=" + rooms 
			                                + "&adults=" + adults + "&children=" + children + "&id=" + id;
        }
	</script>

</body>

</html>