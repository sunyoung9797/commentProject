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
			padding-left: 10%;
		}
		section>div.title:first-letter{
			font-size: 40px;
		}
		section>div.subtitle {
			display: inline-block;
			padding-left: 10%;
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
			padding-left:10%;
		}
		section>div>div.content {
			padding-left: 10%;
		}
		section>div>div.label>div {
			display: inline-block;
			padding-top: 53px;
			padding-right: 3%;
			width: 15%;
			text-align: center;
			font-family: sans-serif;
			font-size: small;
		}
		section>div>div.content>div {
			display: inline-block;
			padding-top: 8px;
			padding-right: 3%;
			padding-left: 2px;
			width: 15%;
			text-align: center;
		}
		section>div>div>div#datelabel {
			padding-right : 100px;
			width: 29%;
			text-align: left;
		}
		
		section>div>div>div#datecontent {
			padding-right : 100px;
			width: 29%;
			text-align: left;
		}
		.bookableList>div{
			display: block;
			font-family: sans-serif;
			height: 136px;
			border-bottom: 1px dotted dimgrey;
		}
		.image, .info, .backpart {
			display: inline-block;
			vertical-align: middle;
		}
		
		.image {
			padding-left: 10%;
		}
		.bookableList>div>.info {
			width: 220px;
			padding-left: 30px;
		}
		.info>div {
			padding: 2%;
		}
		.info>div:child-of-first {
			font-style: bold;
		}
		.backpart {
			float: right;
			margin-top: 60px;
			margin-right: 5%;
			width: 33%;
			align-items; center;
		}
		.detailBtn, .price, .reserveBtn {
			display: inline-block;
			margin-right: 7%;
		}
		button {
			font-style: bold;
			border: transparent;
			border-bottom: 1px solid dimgrey;
			background-color: white;
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
		.modal {
			width: 720px;
			height: 840px;
			border: 2px solid grey;
			
			position: fixed; /* Stay in place */
			z-index: 1; /* Sit on top */
			left: 30%;
			top: 100px;
			overflow: auto; /* Enable scroll if needed */
			align-items: center;
		}
		.modal>div {
			width: 720px;
			height: 836px;
			background-color: white;
			magin-left: 5px;
			padding-left:10px;
		}
		.modal>div>h1 {
			display: inline-block;
			magin-left: 5px;
		}
		.background>button {
			float: right;
		}
		.modal>div>p {
			magin-left: 5px;
		}
		table {
			magin-left: 5px;
			border-style: solid;
            border-collapse: collapse;
            border-color: rightgrey;
            padding: 5px;
            background-color: dimgrey;
            text-align: center;
            color: white;
		}
		td {
			width: 230px;
		}
		tr:nth-child(2n-1) {
			height: 40px;
			font-style:bold;
		}
		tr:nth-child(2n) {
			height: 60px;
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
			console.log(row);
			let rowDiv = $('<div />').attr('id', row.grpCd)
			
			let div = $('<div />').attr('class', 'image').append('<img width="200px" src=' + row.grpCd + '.png>');
			rowDiv.append(div);
			
			div = $('<div />').attr('class', 'info').append('<div>' + row.grpNm + '</div>')
			                                    .append('<div>' + row.views + " | " + row.roomSize + 'M<sup>2</sup></div>');
			rowDiv.append(div);
			
			let divv = $('<div />').attr('class', 'backpart');
			rowDiv.append(divv);
			
			div = $('<div />').attr('class', 'detailBtn').append('<button id="detail">객실상세보기</button>');
			divv.append(div);
			
			div = $('<div />').attr('class', 'price').html(row.price + " KRW")
			divv.append(div);
			
			div = $('<div />').attr('class', 'reserveBtn').append('<button id="reserve">예약하기</button>');
			divv.append(div);
			
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
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		
	%>
	
	<header>
		<div class="menuList">
			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="black" class="bi bi-text-left" viewBox="0 0 16 16">
				<path fill-rule="evenodd" d="M2 12.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"></path>
			</svg>
		</div>
		<div class="logo"><img src="logo2.png"></div>
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
			
		</div>
	</section>
	
	<footer>
		<div class="logo"><img width="100px" src="logo3.png"></div>
		<div class="finfo">
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
	
	<div class="modal" id="detailmodal" style="display:none">
		<div class="background">
			<button id="close">
				<svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
		    		<path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
					<path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
				</svg>
			</button>
			<h1>LUXURY SUITE KING</h1>
			<p>전망에 따라 멋진 경치를 감상하실 수 있습니다.
			<div class="modalImg">
				<img width= 700px; src="ST04.png">
			</div>
			<table border="1">
				<tr><td>LOCATION</td><td>BEDS</td><td>SIZE</td></tr>
				<tr><td>6층</td><td>킹,트윈</td><td>103M<sup>2</sup></td></tr>
				<tr><td>ROOM FEATURES</td><td>VIEW</td><td>CHECK-IN/CHECK-OUT</td></tr>
				<tr><td>거실1,침실,응접실1,화장실1,<br>발코니1,야외히노끼탕</td><td>풀사이드뷰</td><td>15:00/12:00</td></tr>
			</table>
		</div>
	</div>
	
	<script>
		let frDate = '<%=frDate%>';
		let toDate = '<%=toDate%>';
		let rooms = '<%=rooms%>';
		let adults = '<%=adults%>';
		let children = '<%=children%>';
		let id = '';
		let name = '';
		id = '<%=id%>';
		name = '<%=name%>';
		
		if (children == "") {
			children = "0"
		}
		
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
			//location.href = "detailInfo.jsp?grpCd=" + $(event.target).parent().parent().attr('id');
			$('#detailmodal').attr('style', 'display=block');
			
		})
		
		$(document).on('click', 'button#reserve', function(event){
			//console.log($(event.target).parent().parent().parent().attr('id'));
			
			location.href = "option.jsp?grpCd=" + $(event.target).parent().parent().parent().attr('id')
					      + "&frDate=" + frDate + "&toDate=" + toDate + "&rooms=" + rooms + "&adults=" + adults + "&children=" + children + "&id=" + id + "&name=" + name ;
		})
		
		$(document).on('click', '.login', function(event) {
	  		//이미 로그인 되어있으면 막도록 추가함**********************
	  		if($('.login>h5').html() == "로그인") {
		  		location.href = "login.html"
	  		}
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
		
		$(document).on('click', '.logo', function(event) {
	  		location.href = "main.jsp?id=" + id + "&name=" + name;
	  	})
	  	
	  	window.onclick = function(event) {
			let close = document.getElementById('close');
			console.log(event.target);
		    if (event.target == close) {
		    	document.getElementById('detailmodal').style.display = "none";
		    }
		}
		
	</script>
	
	
</body>
</html>