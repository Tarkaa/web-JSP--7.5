<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.study.com/UserTag" prefix="UserTag" %>
<html>
<head>

</head>
<body>
<div align="center">
<h1>�ҵ���վ_��¼</h1><hr>
<font color="red">${msg }</font>
<form action="${pageContext.request.contextPath }/LoginServlet" method="post">
<table border="1">
       <tr>
          <td>�û�����</td>
          
          <td><input type="text" name="username" value="<UserTag:URLDecoder content="${cookie.remname.value }" encode="utf-8"/>"/></td>
       </tr>
       <tr>
          <td>���룺</td>
          <td><input type="password" name="password"/></td>
       </tr>
       <tr>
          <td><input type="submit" value="��¼"/></td>
          <td><input type="checkbox" value="ok" name="remname" 
          <c:if test="${cookie.remname!=null }">
          checked="checked"
          </c:if>
          />��ס�û���</td>
       </tr>
</table>
</form>
</div>
</body>
</html>