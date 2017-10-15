<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/student/save"
		method="post">
		<table>
			<tr>
				<td>学生姓名：</td>
				<td><input type="hidden" name="id" value="${student.id}" /> <input
					type="text" name="studentName" value="${student.studentName}" /></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><c:choose>
						<c:when test="${student.gender=='男'}">
							<input type="radio" name="gender" value="男" checked="checked" />男
						<input type="radio" name="gender" value="女" />女
					</c:when>
						<c:otherwise>
						<input type="radio" name="gender" id="gender" value="男" />男
						<input type="radio" name="gender" id= "gender" value="女" checked="checked" />女
					</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td><input type="text" name="birthday"
					value="${student.birthday}" /></td>
			</tr>
			<tr>
				<td>手机号码：</td>
				<td><input type="text" name="mobile" value="${student.mobile}" />
				</td>
			</tr>
			<tr>
				<td>邮箱：</td>
				<td><input type="text" name="email" value="${student.email }" />
				</td>
			</tr>
			<tr>
				<td>街道：</td>
				<td><input type="text" name="street" value="${student.street }" />
				</td>
			</tr>
			<tr>
				<td>城市：</td>
				<td><input type="text" name="city" value="${student.city}" /></td>
			</tr>
			<tr>
				<td>省：</td>
				<td><select name="province" id="province">
						<option value="北京">北京</option>
						<option value="上海">上海</option>
						<option value="天津">天津</option>
						<option value="河南">河南</option>
				</select></td>
			</tr>
			<tr>

				<td><input type="submit" value="提交" /> <a
					href="${pageContext.request.contextPath}/student/index/1">取消</a></td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
		var province = document.getElementById("province");

		province.value = "${student.province}";
	</script>
</body>
</html>