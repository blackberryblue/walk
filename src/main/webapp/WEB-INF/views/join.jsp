<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>산책</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
<link rel="stylesheet" href="assets/css/animated.css">
<link rel="stylesheet" href="assets/css/owl.css">
<!--
TemplateMo 565 Onix Digital
https://templatemo.com/tm-565-onix-digital
-->

<style>
input {
	border-radius: 20px;
}

button {
	width: 200px;
	color: white;
	font-size: 15px;
	background-color: #4CAF50;
	border-radius: 20px;
	margin-bottom: 10%;
}

table {
	border-collapse: separate;
	border-spacing: 0 30px;
}

.margin-top {
	margin-top:150px;
}
h2{
	color: #03A4ED;
	font-size: 50px;
}
h6{
	color: #FF695F;
}
</style>



</head>

<body>

	<div class="margin-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-6 align-self-center">
							<div class="owl-carousel owl-banner">
								<div class="item header-text">
									<h6>산책을 하러가실까요?</h6>
									<br/>
									
									<h2>
										회원가입을 해주세요
									</h2>

									<div class="down-buttons">

										<div class="call-button">
											<a href="#"><i class="fa fa-phone"></i>문의사항 : 010-11</a>
										</div>
									</div>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>






	<!-- Scripts -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/animation.js"></script>
	<script src="assets/js/imagesloaded.js"></script>
	<script src="assets/js/custom.js"></script>

	<script>
		// Acc
		$(document).on(
				"click",
				".naccs .menu div",
				function() {
					var numberIndex = $(this).index();
					if (!$(this).is("active")) {
						$(".naccs .menu div").removeClass("active");
						$(".naccs ul li").removeClass("active");
						$(this).addClass("active");
						$(".naccs ul").find("li:eq(" + numberIndex + ")")
								.addClass("active");
						var listItemHeight = $(".naccs ul").find(
								"li:eq(" + numberIndex + ")").innerHeight();
						$(".naccs ul").height(listItemHeight + "px");
					}
				});
	</script>

	<center>
		<div id="login">
			<form action="join" method="post">
				<table>


					<tr>
						<td>Name :</td>
						<td><input type="text" name="username"><br /></td>
					</tr>

					<tr>
						<td>Password :</td>
						<td><input type="password" name="password"><br /></td>
					</tr>

					<tr>
						<td>email :</td>
						<td><input type="email" name="email"><br /></td>
					</tr>

					<tr>
						<td>addr :</td>
						<td><input type="text" name="addr"><br /></td>
					</tr>

				</table>

				<button>회원가입</button>
			</form>
		</div>
	</center>






	<div class="footer-dec">
		<img src="assets/images/footer-dec.png" alt="">
	</div>


</body>
</html>