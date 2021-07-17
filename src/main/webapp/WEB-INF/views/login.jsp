<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp"%>
<br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div id="login">

	<form action="login" method="post">
		<table>
			<caption>
				<h1></h1>
			</caption>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password"></td>
			</tr>
		</table>
		<div id="bt">
			<button>로그인</button>
		</div>
	</form>
</div>
</body>
</html>