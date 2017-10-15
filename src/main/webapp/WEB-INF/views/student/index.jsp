<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/student/create">新增</a>
<a href="#" onclick="deleteAll()">批量删除</a>
<a href="${pageContext.request.contextPath}/student/fileUpload">文件上传</a>
<form action ="${pageContext.request.contextPath}/student/delete" method="post">
	<table>
		<tr>
			<td><input type="checkbox" onchange="selectAll(this.checked)" /></td>
			<td>编号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>出生日期</td>
			<td>手机号码</td>
			<td>邮箱</td>
			<td>街道</td>
			<td>城市</td>
			<td>省</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${students.rows}" var="s">
			<tr>
			<td><input type="checkbox"  name="ids" value="${s.id}" /></td>
			<td>${s.id}</td>
			<td>${s.studentName}</td>
			<td>${s.gender}</td>
			<td>${s.birthday}</td>
			<td>${s.mobile}</td>
			<td>${s.email}</td>
			<td>${s.street}</td>
			<td>${s.city}</td>
			<td>${s.province}</td>
			<td>
				<a href="${pageContext.request.contextPath}/student/edit/${s.id}">修改</a>
				<a href="#" onclick="deleteOne(${s.id})">删除</a>
			</td>
			</tr>	
		</c:forEach>
		
	</table>
	<c:if test="${students.index!=1}">
		<a href="${pageContext.request.contextPath}/student/index/${students.first}">首页</a>
		<a href="${pageContext.request.contextPath}/student/index/${students.prev}">上一页</a>
	</c:if>
	第【${students.index}/${students.pages}】页
	&nbsp;共 ${students.total} 条记录
	<c:if test="${students.index!=students.last}">
		<a href="${pageContext.request.contextPath}/student/index/${students.next}">下一页</a>
		<a href="${pageContext.request.contextPath}/student/index/${students.last}">未页</a>
	</c:if>
	
</form>

</body>
<script type="text/javascript">
		function deleteOne(id){
			if(confirm("确认删除吗？")){
				window.location.href="${pageContext.request.contextPath}/student/delete/"+id;
			}
		}
		function selectAll(cheched){
			var ids =document.getElementsByTagName("input");
			for(var i=0;i<ids.length;i++){
				ids[i].checked=checked;
			}
		}
		function deleteAll(){
			if(confirm("确认删除吗？")){
				//document.forms[0].action="${pageContext.request.contextPath}/student/delete";
				document.forms[0].submit();
			}
		}
</script>
</html>