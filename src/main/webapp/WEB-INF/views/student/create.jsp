<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/student/save" method="post"> 
		<table>
			<tr>
				<td>学生姓名：</td>
				<td>
					<input type="text" name="studentName"/>
				</td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>
					<input type="radio" name="gender" value="男" checked="checked"/>男
					<input type="radio" name="gender" value="女" />女
				</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td>
					<input type="text" name="birthday"/>
				</td>
			</tr>
			<tr>
				<td>手机号码：</td>
				<td>
					<input type="text" name="mobile"/>
				</td>
			</tr>
			<tr>
				<td>邮箱：</td>
				<td>
					<input type="text" name="email"/>
				</td>
			</tr>
			<tr>
				<td>街道：</td>
				<td>
					<input type="text" name="street"/>
				</td>
			</tr>
			<tr>
				<td>城市：</td>
				<td>
					<input type="text" name="city"/>
				</td>
			</tr>
			<tr>
				<td>省：</td>
				<td>
					<select name="province" id="province">
							<option>北京</option>
							<option>上海</option>
							<option>天津</option>
					</select>
				</td>
			</tr>
			<tr>
				
				<td>
					<input type="submit" value="提交"/>
					<a href="${pageContext.request.contextPath}/student/index/1">取消</a>
				</td>
			</tr>
		</table>	
	</form>
</body>
</html>