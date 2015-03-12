<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- Project/main.do -->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<link rel="stylesheet" href="mainStyle.css" media="all" type="text/css"/>
</head>
<body>
	<header id="TitleHeader">
		<jsp:include page="title.jsp"/>
	</header>
	
	<section id="MenuSection">
		<header>
			-
		</header>
		
		<div id="login">
			<jsp:include page="loginForm.jsp"/>
		</div>
		
		<nav id="fileNav">
			<jsp:include page="fileMemu.jsp"/>
		</nav>
		
		<nav id="communityNav">
			<jsp:include page="commuMemu.jsp"/>
		</nav>
	</section>
	
	
	<section id="MainSection">
		<header>
			main
		</header>
	</section>
	
	<footer>
		copy right
	</footer>

</body>
</html>