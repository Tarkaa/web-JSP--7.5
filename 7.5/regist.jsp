<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<script type="text/javascript">
function changeImg(img){
    img.src=img.src+"?time="+new Date().getTime();
}
</script>
</head>
 <font color="red" >${msg }</font>
<body>
<div align="center">
<h1>�ҵ���վ_ע��</h1>
<form action="${pageContext.request.contextPath }/RegistServlet" method="post">
<table border="1">
    <tr>
        <td>�û�����</td>
        <td><input type="text" name="username" value="${param.username }"/></td>
    <tr/>
     <tr>
        <td>���룺</td>
        <td><input type="password" name="password" /></td>
    <tr/>
     <tr>
        <td>ȷ�����룺</td>
        <td><input type="password" name="password2" /></td>
    <tr/>
     <tr>
        <td>�ǳƣ�</td>
        <td><input type="text" name="nickname" value="${param.nickname }"/></td>
    <tr/>
     <tr>
        <td>����</td>
        <td><input type="email" name="email" value="${param.email }"/></td>
    <tr/>
     <tr>
        <td>��֤�룺</td>
        <td><input type="text" name="valistr" /></td>
    <tr/>
     <tr>
        <td><input type="submit" value="ע��"/></td>
        <td><img src="${pageContext.request.contextPath }/ValiImg" style="cursor: pointer;" onclick="changeImg(this)"></td>
    <tr/>

</table>
</form>
</div>
</body>
</html