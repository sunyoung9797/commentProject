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
			padding-left: 10%;
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
			margin-left: 8%;
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
			width: 610px;
			
		}
		#hiddenPart {
			padding: 10px;
			background-color: rgb(248, 248, 248);
			vertical-align: middle;
			width: 580px;
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
			<div class="login"><h5>?????????</h5></div>
			<div class="join"><h5>????????????</h5></div>
			<div class="confirm"><h5>????????????</h5></div>
		</div>
	</header>
	
	<section>
		<div class="title"><div>BOOKING</div></div>
		<div class="subtitle">
			<p>????????? ?????? ??????</p>
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
						<input type="text" id="rsvNm" name="rsvNm" data-val="??????(??????)??? ??????????????????" value="??????(??????)??? ??????????????????">
					</div>
					<div class="engName">
						<p>ENGLISH NAME *</p>
						<input type="text" id="enNm1" name="enNm1" data-val="Family Name (???)" value="Family Name (???)">
						<input type="text" id="enNm2" name="enNm2" data-val="First Name (??????)" value="First Name (??????)">
					</div>
					<div class="nationality">
						<p>NATIONALITY *</p>
						<select class="selNat" name="nationality">
						    <option value="????????????">????????????</option>
						    <option value="???????????????">???????????????</option>
						    <option value="??????">??????</option>
						    <option value="??????">??????</option>
						    <option value="?????????">?????????</option>
						    <option value="??????">??????</option>
						    <option value="??????">??????</option>
						    <option value="?????????">?????????</option>
						    <option value="?????????">?????????</option>
						    <option value="??????">??????</option>
						</select>
					</div>
					<div class="phoneNum">
						<p>PHONE NUMBER *</p>
						<select class="selphone" id="phone" name="phone1">
						    <option value="82">????????????(82)</option>
						    <option value="27">???????????????(27)</option>
						    <option value="49">??????(49)</option>
						    <option value="1">??????(1)</option>
						     <option value="34">?????????(34)</option>
						    <option value="44">??????(44)</option>
						    <option value="81">??????(81)</option>
						    <option value="1">?????????(1)</option>
						    <option value="33">?????????(33)</option>
						    <option value="61">??????(61)</option>
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
							<option value="">?????? ??????</option>
							<option value="GOOGLE.COM">GOOGLE.COM</option>
						    <option value="NAVER.COM">NAVER.COM</option>
						    <option value="NATE.COM">NATE.COM</option>
						    <option value="DAUM.NET">DAUM.NET</option>
						</select>					
					</div>
					<div class="selCard">
						<p>CREDIT CARD TYPE *</p>
						<select class="selcardtype" id="card" name="card">
							<option value="">?????? ??????</option>
							<option value="??????">??????</option>
						    <option value="??????">??????</option>
						    <option value="??????(??????)">??????(??????)</option>
						    <option value="??????">??????</option>
						    <option value="??????">??????</option>
						    <option value="??????">??????</option>
						</select>	
					</div>
					<div class="cardNum">
						<p>CARD NUMBER *</p>
						<input type="text" id="cardNum" name="cardNum1" value=""  maxlength='4'>
						<input type="text" id="cardNum" name="cardNum2" value=""  maxlength='4'>
						<input type="text" id="cardNum" name="cardNum3" value=""  maxlength='4'>
						<input type="text" id="cardNum" name="cardNum4" value=""  maxlength='4'>
					</div>
					<div class="ExpDate">
						<p>EXPIRY DATE *</p>
						<select class="selmonth" id="selmonth" name="selmonth">
							<option value="">???</option>
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
							<option value="">???</option>
							<option value="2021">2021</option>
						    <option value="2022">2022</option>
						    <option value="2023">2023</option>
						</select>	
					</div>
					<div class="cardPw">
						<p>CARD PASSWORD *</p>
						<input type="text" id="cardPw" name="cardPw" data-val="???????????? ??? 2??????" value="???????????? ??? 2??????">
					</div>
					<div class="birth">
						<p>DATE OF BIRTH *</p>
						<input type="text" id="birth" name="birthyear" data-val="YYYY" value="YYYY" maxlength='4'>
						<input type="text" id="birth" name="birthmonth" data-val="MM" value="MM" maxlength='2'>
						<input type="text" id="birth" name="birthdate" data-val="DD" value="DD" maxlength='2'>
						<ul style="list-style-type:none;">
							<li>*?????? ?????? ?????? ????????????, ????????? ?????? ??? ?????? ????????? ??????????????? ????????????.</li>
							<li>*?????? ????????? ????????? ?????? ????????? ?????? ??? ????????????.</li>
						</ul>
					</div>
				</div>
				<div class="IdInfoAgree">
					<h3>???????????? ?????????????? ??????</h3>
					<div>
						<div id="showLine">
							<input type="checkbox" id="IdInfoAgree" name="IdInfoAgree" value="IdInfoAgree">
							<lable for="IdInfoAgree">[??????] ???????????? ????????????????? ???????????????</lable>
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
										<th>?????? ??????</th><th>?????? ??????</th><th>?????? ??????</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>??????(??????/??????),<br>???????????????, ????????? ??????</td>
										<td>????????? ????????? ?????? ??? ?????? ??????</td>
										<td rowspan="2"><strong><u>???????????? ??? 5???</u></strong></td>
									</tr>
										<td>???????????? ??????, ??????, ????????????,<br>????????????(???2??????), ????????????</td>
										<td>?????? ??? ????????????<br>??????????????? ?????? ??????</td>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="cnclAgree">
					<h3>?????? ??????</h3>
					<div>
						<div id="showLine">
							<input type="checkbox" id="cnclAgree" name="cnclAgree" value="cnclAgree">
							<lable for="cnclAgree">[??????] ?????? ??? ??????(NO-SHOW) ????????? ???????????????.</lable>
							<button class="btnToggle">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
									<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
								</svg>
							</button>
						</div>
						<div id="hiddenPart" style="display: none">
							<dl>
								<dt>?? ????????? 7??? ??? ?????? 6??? ?????? : ????????? ?????? ?????? ??? ?????? ??????</dt>
								<dt>?? ????????? 7??? ??? ?????? 6??? ?????? - 1??? ??? ?????? 6??? ?????? : ?????? 1??? ????????? 20% ??????</dt>
								<dt>?? ????????? 1??? ??? ?????? 6??? ?????? : ?????? ??? No-show ????????? ??????</dt>
								<dt>&nbsp;&nbsp;- 1??? ?????? : ???????????? 80% ????????? ??????</dt>
								<dt>&nbsp;&nbsp;- 2??? ?????? : ?????? 1??? ????????? 100% ??????</dt>
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
			<div class="logo"><img width="100px" src="logo3.png"></div>
			<div class="info">
				<div class="fmenu">
					<div id="cutomercenter">????????????</div>
					<div id="usermanual">????????????</div>
					<div id="membership">????????? ????????????</div>
					<div id="idinfomng">????????????????????????</div>
					<div id="sitemap">????????????</div>
					
				</div>
				<div class="address">
					<p>??????????????? ?????? ???????????? 403   ???????????? ?????????   053-421-2460</p>
				</div>
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
		let id = '';
		let name = '';
		id = '<%=id%>';
		name = '<%=name%>';
		
		//$('header').append('<h1>' + div + " : " + grpCd + " : " + frDate + " : " + toDate + " : " + rooms + " : " + adults + " : " + children + " : " + totPrice
				//+ " : " + roomPrice + " : " + optName + " : " + optDiv + " : " + optCnt + " : " + optPrice + " : " + taxPrice + " : " + req + " : " + id + '</h1>');
		
		let aryOptName = optName.split(";");
		let aryOptDiv = optDiv.split(";");
		let aryOptCnt = optCnt.split(";");
		let aryOptPrice = optPrice.split(";");
		
		let frDay = getDay(frDate);
		let toDay = getDay(toDate);
		let stay = getStay(frDate, toDate);
		
		
		function getDay(date) {
			let frDay = (new Date(date)).getDay();
			
			let = ['???', '???', '???', '???', '???', '???', '???'];
			
			return let[frDay];
		}
		
		function getStay(frDate, toDate) {
			let fr = new Date(frDate);
			let to = new Date(toDate);
			
			return (to - fr) / (60 * 60 * 24 * 1000);
		}
		
		$('#datecontent').html(frDate + ' ' + frDay + " ~ " + toDate + ' ' + toDay + " | " + stay + "???" );
		$('#roomscontent').html(rooms);
		$('#adultscontent').html(adults);
		$('#childrencontent').html(children);
		
		
		for(let i = 0; i < rooms; i++) {
			let div = $('<div />')
				.append($('<div />').attr('class', 'priceSec1')
							.append($('<h3 />').html('??????' + (i + 1)),
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
										.append($('<p />').attr('id', 'optionname').html('?????? ??????'),
												$('<p />').attr('id', 'optionprice')
										),
									$('<div />').attr('id', 'divC').attr('style', 'display: none')
										.append($('<p />').attr('id', 'optionname').html('????????? ??????'),
												$('<p />').attr('id', 'optionprice')
										),
									$('<div />').attr('id', 'divE').attr('style', 'display: none')
										.append($('<p />').attr('id', 'optionname').html('???????????? ??????'),
												$('<p />').attr('id', 'optionprice')
										),
									$('<div />').attr('id', 'divtax')
										.append($('<p />').html('??????'),
												$('<p />').attr('id', 'taxprice')
										)
							)
						
				);
			
			$('.price').append(div);
		}
	
		$('.price').append($('<div />').html('+??????(10%)'),
				           $('<div />').attr('id', 'tot').append($('<div />').html('<h2>??? ????????????</h2>'),
									        		   			 $('<div />').attr('id', 'totalprice').html('KRW')
									        		     )
				   );
				   
		$('.price').append($('<button />').attr('id', 'bookingComplete').append('?????? ??????'));

		
		
		
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
		
		$(document).on('change', '#email', function(event) {
			$('input[name="email2"]').val($('select[name="selemail"]').val());
		})
		
		
		$(document).on('click', '#bookingComplete', function(event) {
			saveBookingInfo();
		})
		
		function saveBookingInfo() {				
            let gender = $('input[name="gender"]:checked').val();
            let rsvName = $('#rsvNm').val();
            let enNm = $('#enNm1').val() + ":" + $('#enNm2').val();
            let selNat = $('select[name="nationality"]').val();
            let phone = $('select[name="phone1"]').val() + "-" + $('input[name="phone2"]').val() + "-" + $('input[name="phone3"]').val() + "-" + $('input[name="phone4"]').val();
            let email = $('input[name="email1"]').val() + "@" + $('input[name="email2"]').val();
            let card = $('select[name="card"]').val();
            let cardNum = $('input[name="cardNum1"]').val() + $('input[name="cardNum2"]').val() + $('input[name="cardNum3"]').val() + $('input[name="cardNum4"]').val();
			let cardExp = $('select[name="selmonth"]').val() + $('select[name="selyear"]').val();
			let cardPw = $('#cardPw').val();
			let birth = $('input[name="birthyear"]').val() + $('input[name="birthmonth"]').val() + $('input[name="birthdate"]').val();
            
            if(gender == '' || rsvName == '' || enNm1 == '' || enNm2 == '' || selNat == '' || phone == '' || email == '' || card == '' || cardNum == '' || cardExp == '' || cardPw == '' || birth == '') {
            	window.alert("????????? ?????? ????????????.");
            	return;
            }
            
            if($('#IdInfoAgree').is(":checked") == false) {
            	window.alert("???????????? ????????????????? ??????????????????.");
            	return;
            }
            
            if($('#cnclAgree').is(":checked") == false) {
            	window.alert("?????? ??? ?????? ????????? ??????????????????.");
            	return;
            }
            
            let A = [];
            let C = [];
            let E = [];
            
            for(let i = 0; i < aryOptDiv.length; i++) {
            	if(aryOptDiv[i] == 'A') {
            		A = new Array(aryOptDiv[i], aryOptCnt[i], aryOptPrice[i])
            	} else if (aryOptDiv[i] == 'C') {
            		C = new Array(aryOptDiv[i], aryOptCnt[i], aryOptPrice[i])
            	} else if (aryOptDiv[i] == 'E') {
            		E = new Array(aryOptDiv[i], aryOptCnt[i], aryOptPrice[i])
            	}
            }
			
            //ajax..??????.
            $.ajax({
                url: '../HotelServlet',
                type: 'get',
                dataType: 'json',
                data: {cmd: "save",
                	   id: id,
                	   gender: gender, //'id=' + userId + '&fname=' + fname,
                	   grpCd: grpCd,
                	   checkIn: frDate,
                	   checkOut: toDate,
                	   adults: adults,
                	   children: children,
                	   roomCnt: rooms,
                	   adultsBf: A[1],
                	   childrenBf: C[1],
                	   extraBed: E[1],
                	   adultsBfP: A[2],
                	   childrenBfP: C[2],
                	   extraBedP: E[2],
                	   roomPrice: roomPrice,
                	   tax: taxPrice,
                	   totalPrice: totPrice,
                	   cmt: req,
                	   rsvName: rsvName,
                	   engNm: enNm,               	   
                	   nationality: selNat,
                	   phoneNum: phone,
                	   email: email,
                	   cardType: card,
                	   cardNum: cardNum,
                	   expDate: cardExp,
                	   cardPw: cardPw,
                	   birth: birth
                	   },
                dataType: 'json',
                success: function(result) {
                    console.log("??????");
                    
                    if(result.retCode == 'success') {
                    	console.log(result);
                        
                        console.log(result.roomCd);
                        let temp = result.roomCd;
                        let arytemp = temp.split(":");
                        let bookingCd = arytemp[0];
                        let roomCd = arytemp[1];
                        
                        //location.href = "chkReservation.jsp?id=" + id + "&name=" + name;
                        location.href = "chkReservation.jsp?bookingCd=" + bookingCd + "&roomCd=" + roomCd + "&grpCd=" + grpCd + "&id=" + id + "&name=" + name ;
                    	
                    }
                    
                    
                },
                error: function(reject) {
                	console.log("??????");
                }
            });
			
			return false;
		}
		
		$(document).on('click', '.logo', function(event) {
	  		location.href = "main.jsp?id=" + id + "&name=" + name;
	  	})
		
		if(sessionStorage.getItem('name')) {
	  		//console.log($('.login>h5').html());
	  		//console.log(name);
	  		//console.log(sessionStorage.getItem('name'));
	  		
	  		if(sessionStorage.getItem('name')) {
		  		$('.login>h5').html(sessionStorage.getItem('name') + "???");
		  		$('#rsvNm').val(sessionStorage.getItem('name'));
	  		} else {
	  			$('.login>h5').html("?????????");
	  		}
	  	} else {
	  		$('.login>h5').html("?????????");
	  	}
		
		
		
		
	</script>

</body>
</html>