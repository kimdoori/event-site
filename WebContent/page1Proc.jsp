<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이벤트 사이트</title>

<link rel="stylesheet" href="css/page.css">
<link rel="stylesheet" href="css/blur.css">



<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet">

<script>
	function go() {
		location.href = "page2.jsp";
	}
</script>
</head>
<body>
	<div class="wrap">
		<img src="img/event_main.jpg" class="back-img">

		<div class="inner-container">
			<img src="img/event_main.jpg" class="bgvid inner">
			<div class="box">
				<h1>
					<span id="title">JUJU</span>
				</h1>

				<h1>신 메뉴 출시</h1>
				<p>새로 출시된 메뉴의 재료를 모두 맞추시면 한 잔 무료 쿠폰을 드립니다.</p>
				<button onclick="go()">START</button>
				

			</div>
		</div>


	</div>
</body>
</html>