<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>hotelProject/bookableList.jsp</title>
	<script src="../jquery/jquery-3.6.0.js"></script>
	<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
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
		header>div.member{
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
		
		section>div.title {
			height: 120px;
			font-family: 'Times New Roman', Times, serif;
			font-size: xx-large;
		}
		section>div.title>div {
			padding-top: 80px;
			padding-left: 120px;
		}
		section>div.title:first-letter{
			font-size: 40px;
		}
		section>div.subtitle {
			display: inline-block;
			padding-left: 123px;
			font-size: large;
			height: 40px;
		}
		section>div.SelectedInfo {
			background-color: rgb(248, 248, 248);
			margin-top: 30px;
			height: 150px;
		}
		section>div>div.label {
			font-family: "Lucida Console", "Courier New", monospace;
			padding-left: 125px;
		}
		section>div>div.label>div {
			display: inline-block;
			padding-top: 53px;
			padding-right: 4%;
			width: 13%;
			text-align: center;
			font-family: sans-serif;
			font-size: small;
		}
		section>div>div>div#datelabel {
			padding-right : 100px;
			width: 28%;
			text-align: left;
		}
		section>div>div.content {
			padding-left: 123px;
		}
		section>div>div.content>div {
			display: inline-block;
			padding-top: 8px;
			padding-right: 4%;
			padding-left: 2px;
			width: 13%;
			text-align: center;
		}
		section>div>div>div#datecontent {
			padding-right : 100px;
			width: 28%;
			text-align: left;
		}
		.bookableList>div{
			display: block;
		}
		.image, .info, .detailBtn, .price, .reserveBtn {
			display: inline-block;
		}
		
		.image {
			padding-left: 100px;
		}
	</style>
	
	<script>
		window.onload = function() {
			loadBookableList();
		}
		
		function loadBookableList() {
			let xhtp = new XMLHttpRequest();
			xhtp.open('get', '../HotelServlet?cmd=bookable&frDate=' + frDate + '&toDate=' + toDate + '&rooms=' + rooms);
			xhtp.send();
			
			xhtp.onload = function() {
				let data = JSON.parse(xhtp.responseText);
				
				for (let i = 0; i < data.length; i++) {
					let bookableList = makeBookableRow(data[i]);
					
					$('.bookableList').append(bookableList);
				}
			}
		}
		
		function makeBookableRow(row) {
			let rowDiv = $('<div />').attr('id', row.grpCd)
			
			let div = $('<div />').attr('class', 'image').append('<img width="200px" src=' + row.grpCd + '.png>');
			rowDiv.append(div);
			
			div = $('<div />').attr('class', 'info').append('<div>' + row.grpNm + '</div>')
			                                    .append('<div>' + row.views + " | " + row.RoomSize + '</div>');
			rowDiv.append(div);
			
			div = $('<div />').attr('class', 'detailBtn').append('<button id="detail">객실상세보기</button>')
			rowDiv.append(div);
			
			div = $('<div />').attr('class', 'price').html(row.price + " KRW")
			rowDiv.append(div);
			
			div = $('<div />').attr('class', 'reserveBtn').append('<button id="reserve">예약하기</button>')
			rowDiv.append(div);
			
			return rowDiv;
			
		}
	</script>
</head>
<body>
	<%
		String frDate = request.getParameter("frDate");
		String toDate = request.getParameter("toDate");
		String rooms = request.getParameter("rooms");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
	%>
	
	<header>
		<div class="menuList">
			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="black" class="bi bi-text-left" viewBox="0 0 16 16">
				<path fill-rule="evenodd" d="M2 12.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"></path>
			</svg>
		</div>
		<div class="logo"><a href="main.html"><img src="../image/logo2.png"></a></div>
		<div class="member">
			<div class="login"><h5>로그인</h5></div>
			<div class="join"><h5>회원가입</h5></div>
			<div class="confirm"><h5>예약확인</h5></div>
		</div>
	</header>
	
	<section>
		<div class="title"><div>BOOKING</div></div>
		<div class="subtitle">
			<p>객실, 요금선택</p>
		</div>
		<div class="SelectedInfo">
			<div class="label">
				<div id="datelabel"><strong>DATE</strong></div>
				<div id="roomslabel"><strong>ROOMS</strong></div>
				<div id="adultslabel"><strong>ADULTS</strong></div>
				<div id="children"><strong>CHILDREN</strong></div>
			</div>
			<div class="content">
				<div id="datecontent"></div>
				<div id="roomscontent"></div>
				<div id="adultscontent"></div>
				<div id="childrencontent"></div>
			</div>
		</div>
		<div class="bookableList">
			<!--  
			<div id="">
				<div class="image"></div>
				<div class="Info"></div>
				<div class="detailBtn"></div>
				<div class="price"></div>
				<div class="reserveBtn">
					<button></button>
				</div>
			</div>
			-->
		</div>
	</section>
	
	<footer>
		<div class="logo">
			
		</div>
		<div class="info">
		
		</div>
		<div class="address">
		
		</div>
	</footer>
	
	<script>
		let frDate = '2021-10-20'; 
		let toDate = '2021-10-23'; 
		let rooms = '1';  
		let adults = '2';
		let children = '0';  
		
		let frDay = getDay(frDate);
		let toDay = getDay(toDate);
		let stay = getStay(frDate, toDate);
		
		$('#datecontent').html(frDate + ' ' + frDay + " ~ " + toDate + ' ' + toDay + " | " + stay + "박" );
		$('#roomscontent').html(rooms);
		$('#adultscontent').html(adults);
		$('#childrencontent').html(children);
		
		
		
		function getDay(date) {
			let frDay = (new Date(date)).getDay();
			
			let = ['일', '월', '화', '수', '목', '금', '토'];
			
			return let[frDay];
		}
		
		function getStay(frDate, toDate) {
			let fr = new Date(frDate);
			let to = new Date(toDate);
			
			return (to - fr) / (60 * 60 * 24 * 1000);
		}
		
		$(document).on('click', 'button#detail', function(event) {
			location.href = "detailInfo.jsp?grpCd=" + $(event.target).parent().parent().attr('id');
			
		})
		
		$(document).on('click', 'button#reserve', function(event){
			location.href = "option.jsp?grpCd=" + $(event.target).parent().parent().attr('id') 
					      + "&frDate=" + frDate + "&toDate=" + toDate + "&rooms=" + rooms + "&adults=" + adults + "&children=" + children ;
		})
		
	</script>
	
	
</body>
</html>