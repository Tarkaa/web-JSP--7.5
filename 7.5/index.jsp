<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
</head>
<body>
<h1>�ҵ���վ</h1><hr>
<c:if test="${sessionScope.user!=null}">
��ӭ������${sessionScope.user.username }<a href="${pageContext.request.contextPath }/LogOutServlet">ע��</a>
</c:if>

<c:if test="${sessionScope.user==null}">
�οͣ���ӭ�㣡<a href="${pageContext.request.contextPath }/regist.jsp">ע��</a>|<a href="${pageContext.request.contextPath }/login.jsp">��¼</a>
</c:if>
</body>
</html>