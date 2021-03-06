<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			padding-left: 10.5%;
		}
		section>div>div.content {
			padding-left: 10.5%;
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
		String bookingCd = request.getParameter("bookingCd");
		String roomCd = request.getParameter("roomCd");
		String grpCd = request.getParameter("grpCd");
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
		<div class="member" style="display:none">
			<div class="login"><h5>?????????</h5></div>
			<div class="join"><h5>????????????</h5></div>
			<div class="confirm"><h5>????????????</h5></div>
		</div>
	</header>

	<section>
		<div class="title"><div>BOOKING</div></div>
		<div class="subtitle">
			<p>?????? ?????? ??????</p>
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
		let bookingCd = '<%=bookingCd%>';
		let roomCd = '<%=roomCd%>';
		let grpCd = '<%=grpCd%>';
		let id = '';
		let name = '';
		id = '<%=id%>';
		name = '<%=name%>';
		
		
		//-----
		let xhtp = new XMLHttpRequest();
		xhtp.open('get', '../HotelServlet?cmd=grpInfo&grpCd=' + grpCd);
		xhtp.send();
		
		xhtp.onload = function() {
			let data = JSON.parse(xhtp.responseText);
			
			let row = data[0];
			console.log(row);
			
			$('.categoryTxt').html(row.grpNm + " / " + row.beds + " / " + row.views);
			//$('#roomprice').html(row.price);
			//$('#taxprice').html(row.price * 1 / 10);
			
			//catTotTax();
		}
		//-----
	
		
	    $.ajax({
	        url: '../HotelServlet',
	        type: 'get',
	        dataType: 'json',
	        data: {cmd: "chkRsv",
	        		bookingCd: bookingCd
	        	   },
	        dataType: 'json',
	        success: function(result) {
	            console.log("??????");
	            console.log(result[0]);
	            getRsvInfo(result[0]);
	        },
	        error: function(reject) {
	        	console.log("??????");
	        }
	    });
		
		function getRsvInfo(data) {
			let reserveId = data.reserveId; //?????????ID
			let gender = data.gender; //??????
			let roomCd = data.roomCd; //???????????????
			let grpCd = data.grpCd; //????????????
			let checkIn = data.checkIn; //???????????????
			let checkOut = data.checkOut; //??????????????????
			let adults = data.adults; //????????? ?????? ???
			let children = data.children; //????????? ????????? ???
			let adultsBf = data.adultsBf; //?????? ?????? ???
			let childrenBf = data.childrenBf; //????????? ?????? ???
			let extraBed = data.extraBed; //?????? ?????? ???
			let adultsBfP = data.adultsBfP; //?????? ?????? ??? ??????
			let childrenBfP = data.childrenBfP; //????????? ?????? ??? ??????
			let extraBedP = data.extraBedP; //?????? ?????? ??? ??????
			let roomPrice = data.roomPrice; //?????????
			let tax = data.tax; //??????
			let totalPrice = data.totalPrice; //??? ?????? ??????
			let cmt = data.cmt; //????????????
			let rsvName = data.rsvName; //????????? ??????
			let engName = data.engName; //?????? ??????
			let nationality = data.nationality; //??????
			let phoneNum = data.phoneNum; //?????????
			let email = data.email; //?????????
			let cardType = data.cardType; //????????????
			let cardNum = data.cardNum; //????????????
			let expDate = data.expDate; //???????????????
			let cardPw = data.cardPw; //????????????
			let birth = data.birth; //????????????
			
			let frDate = checkIn.substring(0, 4) + "-" + checkIn.substring(4, 6) + "-" + checkIn.substring(6);
			let toDate = checkOut.substring(0, 4) + "-" + checkOut.substring(4, 6) + "-" + checkOut.substring(6);
			
			let frDay = getDay(frDate);
			let toDay = getDay(toDate);
			let stay = getStay(frDate, toDate);
			
			let aryEngNm= engName.split(':');
			let aryPhoneNum = phoneNum.split('-');
			let aryEmail = email.split('@');
			console.log(aryEngNm[0]);
			
			//---------------------------------------------------------------
			
			$('#datecontent').html(frDate + ' ' + frDay + " ~ " + toDate + ' ' + toDay + " | " + stay + "???" );
			$('#roomscontent').html("1");
			$('#adultscontent').html(adults);
			$('#childrencontent').html(children);
		
			//---------------------------------------------------------------
			
			let div = $('<div />')
				.append($('<div />').attr('class', 'priceSec1')
							.append($('<h3 />').html('??????'),
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
			
			$('.price').append($('<div />').html('+??????(10%)'),
					           $('<div />').attr('id', 'tot').append($('<div />').html('<h2>??? ????????????</h2>'),
										        		   			 $('<div />').attr('id', 'totalprice').html('KRW')
										        		     )
					   );
					   
			//$('.price').append($('<button />').attr('id', 'bookingComplete').append('?????? ??????'));
			
			//---------------------------------------------------------------
			
			if(Number(adultsBf) > 0) {
				$('#divA>#optionprice').attr('data-div', 'A').attr('data-cnt', adultsBf).html(adultsBfP);
				$('#divA').attr('style', 'display: block');
			}
			if(Number(childrenBf) > 0) {
				$('#divC>#optionprice').attr('data-div', 'C').attr('data-cnt', childrenBf).html(childrenBfP);
				$('#divC').attr('style', 'display: block');
			}
			if(Number(extraBed) > 0) {
				$('#divE>#optionprice').attr('data-div', 'E').attr('data-cnt', extraBed).html(extraBedP);
				$('#divE').attr('style', 'display: block');
			}
			
			$('#roomprice').html(roomPrice);
			
			$('#taxprice').html(tax);
			
			$('.showPrice>h1').html(totalPrice + " KRW");
			$('#totalprice').html(totalPrice + " KRW");
			
			//---------------------------------------------------------------
			
			if(gender == "MALE") {
				$('input:radio[name="gender"]:input[value="MALE"]').attr("checked", true);
			}else {
				$('input:radio[name="gender"]:input[value="FEMALE"]').attr("checked", true);
			}
			$('#rsvNm').val(rsvName);
			$('#enNm1').val(aryEngNm[0]);
			$('#enNm2').val(aryEngNm[1]);
			$('select[name="nationality"]').val(nationality);
			$('select[name="phone1"]').val(aryPhoneNum[0]);
			$('input[name="phone2"]').val(aryPhoneNum[1]);
			$('input[name="phone3"]').val(aryPhoneNum[2]);
			$('input[name="phone4"]').val(aryPhoneNum[3]);
			$('input[name="email1"]').val(aryEmail[0]);
			$('input[name="email2"]').val(aryEmail[1]);
            $('select[name="card"]').val(cardType);
            $('input[name="cardNum1"]').val(cardNum.substring(0, 4));
            $('input[name="cardNum2"]').val(cardNum.substring(4, 8));
            $('input[name="cardNum3"]').val(cardNum.substring(8, 12));
            $('input[name="cardNum4"]').val(cardNum.substring(12));
			$('select[name="selmonth"]').val(expDate.substring(0, 2));
			$('select[name="selyear"]').val(expDate.substring(2, 6));
			$('#cardPw').val(cardPw);
			$('input[name="birthyear"]').val(birth.substring(0, 4));
			$('input[name="birthmonth"]').val(birth.substring(4, 6));
			$('input[name="birthdate"]').val(birth.substring(6));
			
		}
		
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
		
		$(document).ready(function() {
			$('input').attr("disabled", true);
			$('select').attr("disabled", true);
		})
		
		$(document).on('click', '.logo', function(event) {
	  		location.href = "main.jsp?id=" + id + "&name=" + name;
	  	})
		
		
		
	</script>
	
</body>
</html>