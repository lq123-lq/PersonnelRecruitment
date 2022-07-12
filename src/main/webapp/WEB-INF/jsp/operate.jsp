<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${resumes }" var="list">
<a href="${pageContext.request.contextPath }/viewResumeById_v?id=${list.id}">
	<button class="btn btn-secondary" value="生成简历">生成简历</button>
</a>
</c:forEach>
</body>
</html>