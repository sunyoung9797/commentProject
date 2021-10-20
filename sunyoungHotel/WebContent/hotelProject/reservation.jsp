<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelProject/reservation.html</title>
<script src="../jquery/jquery-3.6.0.js"></script>

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
			padding-left: 58px;
		}
		section>div.title:first-letter{
			font-size: 40px;
		}
		section>div.subtitle {
			display: inline-block;
			padding-left: 60px;
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
			padding-left: 65px;
		}
		section>div>div.content {
			padding-left: 63px;
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
		.confirm>div {
			display: inline-block;
			float: top;
			margin-right: 20px;
			
		}
		.listCont {
			width: 60%;
			min-width: 650px;
			margin-left: 20px;
		}
		.listCont>h2, .listCont>p {
			margin-left: 40px;
		}
		.listCont>h2 {
			font-family: 'Times New Roman', Times, serif;
			font-weight: lighter;
			margin-top: 35px;
		}
		.listCont>p {
			font-family: "Lucida Console", "Courier New", monospace;
			padding-bottom: 20px;
			border-bottom: 1px solid slategrey;
		}
		.listCont {
			width: 60%;
			min-width: 650px;
			margin-left: 20px;
		}
		.listCont>div {
			padding-left: 40px;
		}
		.inputInfo>div>p {
			padding-top: 15px;
		}
		.inputInfo>div>p, #male, #female {
			font-family: "Lucida Console", "Courier New", monospace;
		}
		.gender {
			margin-top: 20px;
		}
		input {
			height: 23px;
			width: 280px;
		}
		#male, #female, #IdInfoAgree, #cnclAgree {
			height: 16px;
			width: 16px;
		}
		#female {
			margin-left: 25px;
		}
		select.selNat {
			height: 30px;
			width: 289px;
		}
		.phone {
			display: inline-block;
		}
		.phoneNum>input{
			height: 23px;
			width:130px;
		}
		.phoneNum>select {
			height: 30px;
			width: 152px;
		}
		#email {
			width: 179px;
		}
		.selemail {
			height: 30px;
			width: 180px;
		}
		.email>p+input {
			margin-right: 4px;
		}
		.selcardtype {
			height: 30px;
			width: 289px;
		}
		#cardNum {
			width: 134px;
		}
		#selmonth, #selyear {
			height: 30px;
			width: 143px;
		}
		#cardPw {
			width: 134px;
		}
		#birth {
			width: 134px;
		}
		ul {
			margin-bottom: 30px;
			padding-left: 2px;
			font-size: small;
			color: dimgray;
		}
		#showLine {
			padding-bottom: 8px;
			padding-top: 8px;
			font-family: sans-serif;
			
		}
		#hiddenPart {
			padding: 10px;
			background-color: rgb(248, 248, 248);
			vertical-align: middle;
		}
		.btnToggle {
			float: right;
			margin-right: 10px;
		}
		
		table {
			border-style: solid;
            border-collapse: collapse;
            border-left-color: transparent;
            border-right-color: transparent;
            border-top-color: transparent;
            border-bottom-color: lightgrey;
            padding: 5px;
            background-color: white;
            text-align: center;
		}
		th {
			height: 37px;
			width: 230px;
			border-right-color: lightgrey;
		}
		th:last-of-type {
			width: 120px;
			border-right-color: transparent;
		}
		td {
			font-size: small;
			height: 50px;
			border-right-color: lightgrey;
		}
		td:last-of-type {
			border-left-color: lightgrey;
			border-right-color: transparent;
		}
		.cnclAgree>div>div>dl>dt {
			font-size: small;
			padding-top: 5px;
		}
		
		.price {
			width: 280px;
			margin-top: 120px;
			margin-left: 3%;
			margin-right: 100px;
			vertical-align: top;
		}
		.price>div {
			padding-left: 15px;
			padding-right: 15px;
		}
		.price>div:first-of-type {
			border: 1px solid black;
		}
		.priceSec1 {
			padding-right: 10px;
		}
		.priceSec2>div {
			border-bottom: 1px dotted slategrey;
		}
		.showPrice {
			vertical-align: middle;
		}
		.showPrice>h1, .showPrice>button {
			display: inline-block;
			vertical-align: middle;
		}
		.priceSec2>div>p {
			display: inline-block;
		}
		.showPrice>button {
			float: right;
			margin-left: 10px;
			margin-top: 24px;
		}
		#checkinDate, #optionname {
			width: 160px;
		}
		#roomprice, #optionprice {
			width: 80px;
		}
		#divtax>p {
			width: 80px;
		}
		#divtax>p:first-of-type {
			width: 160px;
		}
		.price>div:last-of-type {
			padding-left: 1px;
			padding-right:1px;
		}
		#tot>div {
			display: inline-block;
			margin-bottom: 12px;
		}
		h2 {
			margin-bottom: 5px;
			font-size: 23px;
		}
		#totalprice {
			float: right;
			font-size: x-large;
			font-style:bold;
			font-size: 23px;
			text-align: right;
			margin-top: 18px;
		}
		#bookingComplete {
			width: 280px;
			height: 30px;
			background-color: black;
			color: white;
		}
	</style>
	
	<script>
		$(document).ready(function() {
			
		})
	</script>
</head>

<body>
	<%
		String div = request.getParameter("div");
		String grpCd = request.getParameter("grpCd");
		String frDate = request.getParameter("frDate");
		String toDate = request.getParameter("toDate");
		String rooms = request.getParameter("rooms");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		String totPrice = request.getParameter("totPrice");
		String roomPrice = request.getParameter("roomPrice");
		String optName = request.getParameter("optName");
		String optPrice = request.getParameter("optPrice");
		String optDiv = request.getParameter("optDiv");
		String optCnt = request.getParameter("optCnt");
		String taxPrice = request.getParameter("taxPrice");
		String req = request.getParameter("request");
		String id = request.getParameter("id");
	%>
	
	<header>
		<div class="menuList">
			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="black" class="bi bi-text-left" viewBox="0 0 16 16">
				<path fill-rule="evenodd" d="M2 12.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"></path>
			</svg>
		</div>
		<div class="logo"><a href="main.html"><img src="logo2.png"></a></div>
		<div class="member">
			<div class="login"><h5>로그인</h5></div>
			<div class="join"><h5>회원가입</h5></div>
			<div class="confirm"><h5>예약확인</h5></div>
		</div>
	</header>
	
	<section>
		<div class="title"><div>BOOKING</div></div>
		<div class="subtitle">
			<p>예약자 정보 입력</p>
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
		<div class="confirm">
			<div class="listCont">
				<h2 class="title2">SMART CHOICE</h2>
				<p class="categoryTxt"></p>
				<div class="inputInfo">
					<div class="gender">
						<p>GENDER *</p>
						<input type="radio" id="male" name="gender" value="MALE" checked>
						<label for="male">MALE</label>
						<input type="radio" id="female" name="gender" value="FEMALE">
						<label for="female">FEMALE</label>
					</div>
					<div class="reservName">
						<p>RESERVATION NAME *</p>
						<input type="text" id="rsvNm" name="rsvNm" data-val="성함(국문)을 입력해주세요" value="성함(국문)을 입력해주세요">
					</div>
					<div class="engName">
						<p>ENGLISH NAME *</p>
						<input type="text" id="enNm1" name="enNm1" data-val="Family Name (성)" value="Family Name (성)">
						<input type="text" id="enNm2" name="enNm2" data-val="First Name (이름)" value="First Name (이름)">
					</div>
					<div class="nationality">
						<p>NATIONALITY *</p>
						<select class="selNat" name="nationality">
						    <option value="대한민국">대한민국</option>
						    <option value="남아프리카">남아프리카</option>
						    <option value="독일">독일</option>
						    <option value="미국">미국</option>
						    <option value="스페인">스페인</option>
						    <option value="영국">영국</option>
						    <option value="일본">일본</option>
						    <option value="캐나다">캐나다</option>
						    <option value="프랑스">프랑스</option>
						    <option value="호주">호주</option>
						</select>
					</div>
					<div class="phoneNum">
						<p>PHONE NUMBER *</p>
						<select class="selphone" id="phone" name="phone1">
						    <option value="82">대한민국(82)</option>
						    <option value="27">남아프리카(27)</option>
						    <option value="49">독일(49)</option>
						    <option value="1">미국(1)</option>
						     <option value="34">스페인(34)</option>
						    <option value="44">영국(44)</option>
						    <option value="81">일본(81)</option>
						    <option value="1">캐나다(1)</option>
						    <option value="33">프랑스(33)</option>
						    <option value="61">호주(61)</option>
						</select>
						<input type="text" id="phone" name="phone2" value="">
						<input type="text" id="phone" name="phone3" value="">
						<input type="text" id="phone" name="phone4" value="">
					</div>
					<div class="email">
						<p>E-MAIL *</p>
						<input type="text" id="email" name="email1" value="">@
						<input type="text" id="email" name="email2" value="">	
						<select class="selemail" id="email" name="selemail">
							<option value="">직접 입력</option>
							<option value="GOOGLE.COM">GOOGLE.COM</option>
						    <option value="NAVER.COM">NAVER.COM</option>
						    <option value="NATE.COM">NATE.COM</option>
						    <option value="DAUM.NET">DAUM.NET</option>
						</select>					
					</div>
					<div class="selCard">
						<p>CREDIT CARD TYPE *</p>
						<select class="selcardtype" id="card" name="card">
							<option value="">카드 선택</option>
							<option value="비씨">비씨</option>
						    <option value="국민">국민</option>
						    <option value="하나(외환)">하나(외환)</option>
						    <option value="삼성">삼성</option>
						    <option value="신한">신한</option>
						    <option value="현대">현대</option>
						</select>	
					</div>
					<div class="cardNum">
						<p>CARD NUMBER *</p>
						<input type="text" id="cardNum" name="cardNum1" value="">
						<input type="text" id="cardNum" name="cardNum2" value="">
						<input type="text" id="cardNum" name="cardNum3" value="">
						<input type="text" id="cardNum" name="cardNum4" value="">
					</div>
					<div class="ExpDate">
						<p>EXPIRY DATE *</p>
						<select class="selmonth" id="selmonth" name="selmonth">
							<option value="">월</option>
							<option value="1">1</option>
						    <option value="2">2</option>
						    <option value="3">3</option>
						    <option value="4">4</option>
						    <option value="5">5</option>
						    <option value="6">6</option>
						    <option value="7">7</option>
						    <option value="8">8</option>
						    <option value="9">9</option>
						    <option value="10">10</option>
						    <option value="11">11</option>
						    <option value="12">12</option>
						</select>	
						<select class="selyear" id="selyear" name="selyear">
							<option value="">년</option>
							<option value="2021">2021</option>
						    <option value="2022">2022</option>
						    <option value="2023">2023</option>
						</select>	
					</div>
					<div class="cardPw">
						<p>CARD PASSWORD *</p>
						<input type="text" id="cardPw" name="cardPw" data-val="비밀번호 앞 2자리" value="비밀번호 앞 2자리">
					</div>
					<div class="birth">
						<p>DATE OF BIRTH *</p>
						<input type="text" id="birth" name="birthyear" data-val="YYYY" value="YYYY">
						<input type="text" id="birth" name="birthmonth" data-val="MM" value="MM">
						<input type="text" id="birth" name="birthdate" data-val="DD" value="DD">
						<ul style="list-style-type:none;">
							<li>*예약 접수 확인 용도이며, 온라인 예약 시 직접 결제가 이루어지지 않습니다.</li>
							<li>*객실 재판매 행위는 법적 제재를 받을 수 있습니다.</li>
						</ul>
					</div>
				</div>
				<div class="IdInfoAgree">
					<h3>개인정보 수집·이용 동의</h3>
					<div>
						<div id="showLine">
							<input type="checkbox" id="IdInfoAgree" name="IdInfoAgree" value="IdInfoAgree">
							<lable for="IdInfoAgree">[필수] 개인정보 수집·이용에 동의합니다</lable>
							<button class="btnToggle">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
									<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
								</svg>
							</button>
						</div>
						<div id="hiddenPart" style="display: none">
							<table border="1">
								<thead>
									<tr>
										<th>수집 항목</th><th>수집 목적</th><th>보유 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>이름(국문/영문),<br>휴대폰번호, 이메일 주소</td>
										<td>서비스 이용자 식별 및 의사 소통</td>
										<td rowspan="2"><strong><u>객실예약 후 5년</u></strong></td>
									</tr>
										<td>신용카드 종류, 번호, 유효기간,<br>비밀번호(앞2자리), 생년월일</td>
										<td>객실 및 부대시설<br>이용요금에 대한 보증</td>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="cnclAgree">
					<h3>취소 규정</h3>
					<div>
						<div id="showLine">
							<input type="checkbox" id="cnclAgree" name="cnclAgree" value="cnclAgree">
							<lable for="cnclAgree">[필수] 취소 및 노쇼(NO-SHOW) 규정에 동의합니다.</lable>
							<button class="btnToggle">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
									<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
								</svg>
							</button>
						</div>
						<div id="hiddenPart" style="display: none">
							<dl>
								<dt>· 체크인 7일 전 오후 6시 이전 : 위약금 없이 변경 및 취소 가능</dt>
								<dt>· 체크인 7일 전 오후 6시 이후 - 1일 전 오후 6시 이전 : 최초 1박 요금의 20% 부과</dt>
								<dt>· 체크인 1일 전 오후 6시 이후 : 취소 및 No-show 위약금 발생</dt>
								<dt>&nbsp;&nbsp;- 1박 투숙 : 객실료의 80% 위약금 부과</dt>
								<dt>&nbsp;&nbsp;- 2박 투숙 : 최초 1박 요금의 100% 부과</dt>
							</dl>
						</div>
					</div>
				</div>
			</div>
			<div class="price">
				
			</div>
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
		let div = '<%=div%>';
		let grpCd = '<%=grpCd%>';
		let frDate = '<%=frDate%>';
		let toDate = '<%=toDate%>';
		let rooms = '<%=rooms%>';
		let adults = '<%=adults%>';
		let children = '<%=children%>';
		let totPrice = '<%=totPrice%>';
		let roomPrice = '<%=roomPrice%>';
		let optName = '<%=optName%>';
		let optDiv = '<%=optDiv%>';
		let optCnt = '<%=optCnt%>';
		let optPrice = '<%=optPrice%>';
		let taxPrice = '<%=taxPrice%>';
		let req = '<%=req%>';
		let id = '<%=id%>';
		
		//$('header').append('<h1>' + div + " : " + grpCd + " : " + frDate + " : " + toDate + " : " + rooms + " : " + adults + " : " + children + " : " + totPrice
				//+ " : " + roomPrice + " : " + optName + " : " + optDiv + " : " + optCnt + " : " + optPrice + " : " + taxPrice + " : " + req + " : " + id + '</h1>');
		
	//	let aryOptName = optName.split(";");
	//	let aryOptDiv = optDiv.split(";");
	//	let aryOptCnt = optCnt.split(";");
	//	let aryOptPrice = optPrice.split(";");
		
		let frDay = getDay(frDate);
		let toDay = getDay(toDate);
		let stay = getStay(frDate, toDate);
		
		
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
		
		$('#datecontent').html(frDate + ' ' + frDay + " ~ " + toDate + ' ' + toDay + " | " + stay + "박" );
		$('#roomscontent').html(rooms);
		$('#adultscontent').html(adults);
		$('#childrencontent').html(children);
		
		
		for(let i = 0; i < rooms; i++) {
			let div = $('<div />')
				.append($('<div />').attr('class', 'priceSec1')
							.append($('<h3 />').html('객실' + (i + 1)),
									$('<div />').attr('class', 'showPrice')
										.append($('<h1 />').html('KRW'),
												$('<button />').attr('class', 'btnToggle').append('<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/></svg>'),
										)
							),
						$('<div />').attr('class', 'priceSec2').attr('id', 'addOption')
							.append($('<div />').attr('id', 'divroom')
										.append($('<p />').attr('id', 'checkinDate').html(frDate),
												$('<p />').attr('id', 'roomprice')
										),
									$('<div />').attr('id', 'divA').attr('style', 'display: none')
										.append($('<p />').attr('id', 'optionname').html('성인 조식'),
												$('<p />').attr('id', 'optionprice')
										),
									$('<div />').attr('id', 'divC').attr('style', 'display: none')
										.append($('<p />').attr('id', 'optionname').html('어린이 조식'),
												$('<p />').attr('id', 'optionprice')
										),
									$('<div />').attr('id', 'divE').attr('style', 'display: none')
										.append($('<p />').attr('id', 'optionname').html('엑스트라 베드'),
												$('<p />').attr('id', 'optionprice')
										),
									$('<div />').attr('id', 'divtax')
										.append($('<p />').html('세금'),
												$('<p />').attr('id', 'taxprice')
										)
							)
						
				);
			
			$('.price').append(div);
		}
	
		$('.price').append($('<div />').html('+세금(10%)'),
				           $('<div />').attr('id', 'tot').append($('<div />').html('<h2>총 예약금액</h2>'),
									        		   			 $('<div />').attr('id', 'totalprice').html('KRW')
									        		     )
				   );
				   
		$('.price').append($('<button />').attr('id', 'bookingComplete').append('예약 완료'));

		
		
		
		//-----
		let xhtp = new XMLHttpRequest();
		xhtp.open('get', '../HotelServlet?cmd=grpInfo&grpCd=' + grpCd);
		xhtp.send();
		
		xhtp.onload = function() {
			let data = JSON.parse(xhtp.responseText);
			
			let row = data[0];
			console.log(row);
			
			$('.categoryTxt').html(row.grpNm + " / " + row.beds + " / " + row.views);
			$('#roomprice').html(row.price);
			$('#taxprice').html(row.price * 1 / 10);
			
			showPrice();
		}
		//-----
		
		
		function showPrice() {
			let aryOptName = optName.split(";");
			let aryOptDiv = optDiv.split(";");
			let aryOptCnt = optCnt.split(";");
			let aryOptPrice = optPrice.split(";");
			
			for(let i = 0; i < aryOptDiv.length; i++) {
				$('#div' + aryOptDiv[i] + '>#optionprice').attr('data-div', aryOptDiv[i]).attr('data-cnt', aryOptCnt[i]).html(aryOptPrice[i]);
				$('#div' + aryOptDiv[i]).attr('style', 'display: block');
			}
			
			$('#roomprice').html(roomPrice);
			
			$('#taxprice').html(taxPrice);
			
			$('.showPrice>h1').html(totPrice + " KRW");
			$('#totalprice').html(totPrice + " KRW");
			
		}
		
		$(document).on('focus', 'input', function(event) {
			//console.log(event.target.getAttribute('data-val'));
			//console.log($(this).val)
			if(event.target.defaultValue != '') {
				event.target.defaultValue = ''
			}
		})
		
		$(document).on('focusout', 'input', function(event) {
			if(event.target.defaultValue == '') {
				event.target.defaultValue = event.target.getAttribute('data-val');
			}
		})
		
		$(document).on('click', '.btnToggle', function(event) {
			//console.log(event.target);
			//console.log($(this).parent().siblings());
			//console.log($(this).parent().siblings().attr('style'));
			
			if($(this).parent().siblings().attr('style') == 'display: none') {
				$(this).parent().siblings().attr('style', 'display: block');
			} else {
				$(this).parent().siblings().attr('style', 'display: none');
			}
		})
		
		$(document).on('click', '#bookingComplete', function(event) {
			console($(input).attr('name'));

		})
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>

</body>
</html>