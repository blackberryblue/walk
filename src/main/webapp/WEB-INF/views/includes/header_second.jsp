<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	margin: 0; /*body의 바깥 여백을 없앰으로서 내비게이션 바가 페이지에 바짝 붙게 함*/

}

.nav-container {
	display: flex;
	flex-direction: row;
	height: 60px;
	width: 100%;
	margin : 0; /*쓸 데 없는 공백 제거*/
	padding: 0; /*쓸 데 없는 공백 제거*/
	background-color: #03A4ED;
	list-style-type: none; /*목록 기호 제거*/
	color: white;
	font-size: 18px;
	text-align: center;
}

.nav-item {
	padding: 35px;
	cursor: pointer; /*마우스 커서를 pointer 모양으로 함*/
}

.nav-item a { /*nav-item 클래스 아래의 a 요소를 선택함*/
	text-align: center;
	text-decoration: none; /*밑줄 없앰*/
	color: white;
}

a:hover {
	text-decoration: none;
	color: #ff695f;
}

.nav-item:hover {
	color: #ff695f;
}
</style>
</head>
<body>
	<nav class="color">
		<!-- ***** Logo Start ***** -->

		<!-- ***** Menu Start ***** -->
		<ul class="nav-container">

			<!-- ***** Logo End ***** -->

			<c:choose>
				<c:when test="${ not empty memberVO }">
					<br />
					<li class="nav-item"><a href="/" class="logo"> <img
							src="../assets/images/banner20.png">
					</a></li>
					<li class="nav-item"><a href="/" class="active">Home</a></li>
					<li class="nav-item"><a href="/member/logout">Logout</a></li>
					<li class="nav-item"><a href="/member/list">회원정보확인</a></li>
					<li class="nav-item"><a href="/member/remov">회원탈퇴</a></li>
					<li class="nav-item"><a href="/boarduser/insert">사용자글작성</a></li>
					<li class="nav-item"><a href="/boardadmin/insert">관리자글작성</a></li>
					<li class="nav-item"><a href="/boardadmin/insert">회원목록보기</a></li>

				</c:when>
				<c:otherwise>
					<li class="nav-item"><a href="/" class="logo"> <img
							src="../assets/images/banner20.png">
					</a></li>
					<li class="nav-item"><a href="/join">회원가입</a></li>
					<li class="nav-item"><a href="/login">Login</a></li>
				</c:otherwise>
			</c:choose>
			<li class="nav-item"><a href="/boarduser/list">게시판</a></li>

			<!-- ***** Menu End ***** -->
		</ul>
	</nav>
</body>
</html>