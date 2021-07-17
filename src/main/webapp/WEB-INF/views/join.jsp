<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp"%>
	<div id="login">
		<form action="join" method="post">
			<table>
				<caption>
					<h1>회원 가입</h1>
				</caption>

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
</body>
</html>