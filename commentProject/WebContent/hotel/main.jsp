<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main.html</title>
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
            <div id="search">
                체크인<input type="date" name="checkin" id="checkin"><br>
                체크아웃<input type="date" name="checkout" id="checkout"><br>
                ROOM<select name="room" id="room">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select><br>
                성인<input type="text" name="adult" id="adult"><br>
                어린이<input type="text" name="kids" id="kids">
                <input type="submit" value="Search">
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
    </div>

</body>

</html>