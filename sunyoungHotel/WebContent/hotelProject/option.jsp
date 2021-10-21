<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelProject/option.jsp</title>
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
			margin-left: 8%;
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
		
		
		.btnToggle {
			float: right;
			margin-right: 10px;
		}
		.numPeople {
			display: inline-block;
		}
		.toggleCont>div {
			padding-bottom: 10px;
		}
		
		.addOption {
			padding-left: 10px;
		}
		
		.addOption>span {
			width: 120px;
		}
		
		.numPeople {
			float: right;
			margin-right: 60px;
		}
		.numPeople>span {
			padding-left: 15px;
			padding-right: 15px;
		}
		.minus, .plus {
			width: 25px;
			height: 25px;
			text-align: center;
			font-size: large;
			background-color: steelgrey;
			color: grey;
		}
		
		li {
			font-size: small;
		}
		
		#reqCont {
			width: 90%;
			height: 100px;
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
		#bookingvisitor {
			margin-right: 2px;
		}
		#bookingvisitor, #bookingmember {
			width: 139px;
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
			//let btnMinus = $('p[id=minus]');
		})
	</script>
</head>
<body>
	<%
		String grpCd = request.getParameter("grpCd");
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
		<div class="confirm">
			<div class="listCont">
				<h2 class="title2">SMART CHOICE</h2>
				<p class="categoryTxt"></p>
				
			</div>
			<div class="price">
				
			</div>
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
	
	<script>
		let grpCd = '<%=grpCd%>';
		let frDate = '<%=frDate%>';
		let toDate = '<%=toDate%>';
		let rooms = '<%=rooms%>';
		let adults = '<%=adults%>';
		let children = '<%=children%>';
		let id = '';
		let name = '';
		id = '<%=id%>';
		name = '<%=name%>';
		
		//$('header').append('<h1>' + grpCd + " : " + frDate + " : " + toDate + " : " + rooms + " : " + adults + " : " + children + '</h1>');
		
		let frDay = getDay(frDate);
		let toDay = getDay(toDate);
		let stay = getStay(frDate, toDate);
		
		let tot_price='';
		let room_price='';
		let opt_name='';
		let opt_price='';
		let opt_div='';
		let opt_cnt='';
		let tax_price='';
		
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
			let ul = $('<ul />')
				.append($('<strong />').attr('class', 'listTit').html('객실' + (i + 1)),
					    $('<button />').attr('class', 'btnToggle').append('<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/></svg>'),
					    $('<div />').attr('class', 'toggleCont').attr('style', 'display: block')
					    	.append($('<h3 />').attr('class', 'opTit').html('BREAKFAST'),
					    			$('<div />').attr('class', 'addOption').attr('data-type', 'optA')
					    				.append($('<span />').attr('class', 'txt').html('성인 조식 추가'),
					    						$('<span />').attr('class', 'optPrice').html('KRW 45,000'),
					    						$('<div />').attr('class', 'numPeople')
					    							.append($('<button />').attr('class', 'minus').attr('id', 'A').append('-'),
					    									$('<span />').attr('class', 'A').html('0'),
					    									$('<button />').attr('class', 'plus').attr('id', 'A').append('+')					    									
					    							)
					    				),
					    			$('<div />').attr('class', 'addOption').attr('data-type', 'optC')
					    				.append($('<span />').attr('class', 'txt').html('어린이 조식 추가'),
					    						$('<span />').attr('class', 'optPrice').html('KRW 27,000'),
					    						$('<div />').attr('class', 'numPeople')
					    							.append($('<button />').attr('class', 'minus').attr('id', 'C').append('-'),
					    									$('<span />').attr('class', 'C').html('0'),
					    									$('<button />').attr('class', 'plus').attr('id', 'C').append('+')					    									
					    							)
					    				),
					    			$('<ul />').attr('class', 'txtGuide')
					    				.append($('<li />').html('인원 추가 금액에는 조식이 포함되어 있지 않습니다.<br>조식 추가 기능을 통해 별도로 추가가 가능합니다.'),
					    						$('<li />').html('조식 옵션 추가 시, 투숙 일수와 동일한 횟수의 조식이 제공됩니다.'),
					    						$('<li />').html('어린이 조식 추가 비용 적용 대상은 37개월 이상 만 12세 이하입니다.'),
					    						$('<li />').html('사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다.')
					    				),
					    			$('<h3 />').attr('class', 'opTit').html('EXTRA BED'),
					    			$('<div />').attr('class', 'addOption').attr('data-type', 'optE')
				    				.append($('<span />').attr('class', 'txt').html('엑스트라 베드 추가'),
				    						$('<span />').attr('class', 'optPrice').html('KRW 44,000'),
				    						$('<div />').attr('class', 'numPeople')
				    							.append($('<button />').attr('class', 'minus').attr('id', 'E').append('-'),
				    									$('<span />').attr('class', 'E').html('0'),
				    									$('<button />').attr('class', 'plus').attr('id', 'E').append('+')					    									
				    							)
				    				 ),
				    				 $('<h3 />').attr('class', 'opTit').html('REQUESTS'),
				    				 $('<textarea>').attr('id', 'reqCont')
					    	)
				);
			$('.listCont').append(ul);
			
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
				   
		$('.price').append($('<button />').attr('id', 'bookingvisitor').append('비회원예약'));
		$('.price').append($('<button />').attr('id', 'bookingmember').append('회원예약'));
		
		
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
			
			catTotTax();
		}
		//-----
		
		
		function catTotTax() {
			let optprice = $('p[id=optionprice]');
			let totP = Number($('#roomprice').html());
			
			for (let o of optprice) {
				totP += Number($(o).html());
			}
			
			$('#taxprice').html(totP / 10);
			
			let totPrice = totP + (totP / 10);
			
			$('.showPrice>h1').html(totPrice + " KRW");
			$('#totalprice').html(totPrice + " KRW");
			tot_price = totPrice;
		}
		
		
		$(document).on('click', '.minus', function(event) {
			let div_class = this.getAttribute('id');
			let cnt = $('.' + div_class).html();
			
			//console.log("aaaa : " + Number($(this).parent().prev().html().substr(4).replace(',', '')));
			let opP = Number($(this).parent().prev().html().substr(4).replace(',', ''));
			
			if (cnt > 0) {
				let optCnt = Number(cnt) - 1;
				$('.' + div_class).html(optCnt);
				
				$('#div' + div_class + '>#optionprice').attr('data-div', div_class).attr('data-cnt', optCnt).html(Number(optCnt) * opP);
				
				if(optCnt == 0) {
					$('#div' + div_class).attr('style', 'display: none');
				}
				catTotTax();
			}
		})
		
		$(document).on('click', '.plus', function(event) {
			//console.log("11 : " + this.getAttribute('id'));
			let div_class = this.getAttribute('id');
			//console.log("22 : " + div_class);
			let cnt = $('.' + div_class).html();
			
			let opP = Number($(this).parent().prev().html().substr(4).replace(',', ''));
			
			let max = '1';
			if(div_class == 'A') {
				//console.log("aaa")
				max = adults;
			} else if(div_class == 'C') {
				//console.log("ccc")
				max = children;
			} else if(div_class == 'E') {
				//console.log("eee")
				max = 1;
			}
			//console.log("33 : " + div_class);
			//console.log(max);
			if (cnt < max) {
				let optCnt = Number(cnt) + 1;
				$('.' + div_class).html(optCnt);
				
				$('#div' + div_class + '>#optionprice').attr('data-div', div_class).attr('data-cnt', optCnt).html(Number(optCnt) * opP);
				
				if(optCnt > 0) {
					$('#div' + div_class).attr('style', 'display: block');
				}
				
				catTotTax();
			}
		})
		
		$(document).on('click', '#bookingvisitor', function(event) {
			//비회원예약
			loadConfirmPage('visitor');
					
		})
		
		$(document).on('click', '#bookingmember', function(event) {
			//로그인되어있지 않으면 로그인 화면으로
			//if (user_id == ''){
				//location.href = "login.html"
			//}
			loadConfirmPage('member');
		})
		
		function loadConfirmPage(div) {
			room_price=$('#roomprice').html();
			opt_name='';
			opt_price='';
			tax_price=$('#taxprice').html();
			
			let optname = $('p[id=optionname]');
			
			for(let o of optname) {
				//console.log(o);
				if(opt_name =='') {
					opt_name = $(o).html();
				} else {
					opt_name += ";" + $(o).html();
				}
			}
			console.log(opt_name);
			
			let optprice = $('p[id=optionprice]');
			let optP = 0;
			
			for (let o of optprice) {
				//console.log(o);
				if(opt_price =='') {
					opt_price = $(o).html();
					opt_div = $(o).attr('data-div');
					opt_cnt = $(o).attr('data-cnt');
				} else {
					opt_price += ";" + $(o).html();
					opt_div += ";" + $(o).attr('data-div');
					opt_cnt += ";" + $(o).attr('data-cnt');
				}
				optP += Number($(o).html());
			}
			console.log(opt_price);
			
			let request = $('#reqCont').val();
			
			//tot_price=Number(room_price) + Number(optP) + Number(tax_price);
			
			if (div == 'member') {
				//로그인 후
				location.href = "reservation.jsp?div=" + div + "&grpCd=" + grpCd + "&frDate=" + frDate + "&toDate=" + toDate + "&rooms=" + rooms + "&adults=" + adults + "&children=" + children + "&totPrice=" + tot_price + 
				"&roomPrice=" + room_price + "&optName=" + opt_name + "&optPrice=" + opt_price + "&optDiv=" + opt_div + "&optCnt=" + opt_cnt + "&taxPrice=" + tax_price + "&request=" + request + "&id=" + id + "&name=" + name ;
				
			} else {
				location.href = "reservation.jsp?div=" + div + "&grpCd=" + grpCd + "&frDate=" + frDate + "&toDate=" + toDate + "&rooms=" + rooms + "&adults=" + adults + "&children=" + children + "&totPrice=" + tot_price + 
				"&roomPrice=" + room_price + "&optName=" + opt_name + "&optPrice=" + opt_price + "&optDiv=" + opt_div + "&optCnt=" + opt_cnt + "&taxPrice=" + tax_price + "&request=" + request + "&id=" + '' ;
			}
		}
		
		$(document).on('click', '.logo', function(event) {
	  		location.href = "main.jsp?id=" + id + "&name=" + name;
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
		
		
	</script>
</body>
</html>