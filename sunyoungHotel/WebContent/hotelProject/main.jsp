<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
<script src="../jquery/jquery-3.6.0.js"></script>
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
	width:100%;
    height:700px;

}

.search {
	color: white;
	position: absolute;
	z-index:1;
	width:100%;
    height:70%;
    margin: 15% 0% 20% 0%;
    font-size: large;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
table.in {
	z-index:0;
	background-color: rgba(0, 0, 0, 0.3);
	padding-left: 12%;
	padding-right: 12%;
	padding-top: 30px;
	padding-bottom:30px;
}
td {
	width:19%;
	text-align: center;
}
#checkin,#checkout,#adult,#kids{
	width:55%;
}
select#room {
	width:55%;	
}

img#img {
	margin: 5% 0% 0% 0% ;
	width: 100%;
	height: 70%;
	
}
.wrap {
	height:100%;
	z-index:2;
	position: relative;
}
footer {
	margin-top: 50px;
}
footer>div {
	display: inline-block;
	vertical-align: middle;
	font-size: small;
}
.fmenu>div {
	display: inline-block;
}

footer>div.logo {
	margin-left: 34%;
}

</style>

<body>
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
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
				<img src="logo2.png">
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
			<div class="wrap">
					<div class="search">
						<table class="in">
							<tbody>
								<tr>
									<td>CHECK IN<br><input type="date" name="checkin" id="checkin"></td>
									<td>CHECK OUT<br><input type="date" name="checkout" id="checkout"></td>
									<td>ROOM<br><select name="room" id="room">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
										</select></td>
									<td>ADULT<br><input type="text" name="adult" id="adult"></td>
									<td>CHILDREN<br><input type="text" name="kids" id="kids"></td>
									<td>
										<div class="btn" style="text-align: center;">
											<button id="btnsearch">SEARCH</button>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<img src="city.jpg" id="img">
				</div>

		</section>
		<footer>
			<div class="logo"><img width="100px" src="logo3.png"></div>
			<div class="info">
				<div class="fmenu">
					<div id="cutomercenter">고객센터</div>
					<div id="usermanual">이용약관</div>
					<div id="membership">멤버십 이용약관</div>
					<div id="idinfomng">개인정보처리방침</div>
					<div id="sitemap">사이트맵</div>
					
				</div>
				<div class="address">
					<p>대구광역시 중구 중앙대로 403   대표이사 서강중   053-421-2460</p>
				</div>
			</div>
			
		</footer>
	</div>

	<script>
		let name = '<%=name%>';
		let id = '<%=id%>';
		
	  	$(document).on('click', '#btnsearch', function(event) {
	  		let frDate = $('#checkin').val();
	      	let toDate = $('#checkout').val();
	      	let rooms = $('#room').val();
	      	let adults = $('#adult').val();
	      	let children =$('#kids').val();
	      	
	  		location.href = "bookableList.jsp?frDate=" + frDate + "&toDate=" + toDate + "&rooms=" + rooms 
	            + "&adults=" + adults + "&children=" + children + "&id=" + id;
	  	})
	  	
	  	$(document).on('click', '.login', function(event) {
	  		console.log("11");
	  		location.href = "login.html"
	  	})
	  	
	  	if(sessionStorage.getItem('name')) {
	  		//console.log($('.login>h5').html());
	  		//console.log(name);
	  		//console.log(sessionStorage.getItem('name'));
	  		
	  		if(sessionStorage.getItem('name')) {
		  		$('.login>h5').html(sessionStorage.getItem('name') + "님");
	  		} else {
	  			$('.login>h5').html("로그인");
	  		}
	  	} else {
	  		$('.login>h5').html("로그인");
	  	}
	  	
	  	$(document).on('click','.join', function(event) {
	  		location.href = "join.html"
	  	})
	  	
	  	
		$(document).on('click', '.logo', function(event) {
		     location.href = "main.jsp?id=" + id + "&name=" + name;
		})
				
			
	</script>

</body>

</html>