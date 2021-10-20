<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelProject/detailInfo.jsp</title>
<script src="../jquery/jquery-3.6.0.js"></script>
</head>

<body>
	<%
		String grpCd = request.getParameter("grpCd");
	%>
	
	<header>
	
	</header>
	
	<section>
	
	</section>
	
	<footer>
	
	</footer>
	
	<script>
		let grpCd = '<%=grpCd%>';
		
		$('header').append('<h1>' + grpCd + '</h1>');
	</script>
</body>
</html>