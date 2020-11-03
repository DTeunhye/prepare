<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    


<html>
<head>
<meta charset=UTF-8">
<link href="${contextPath}/resources/style/style.css?ver=1" rel="stylesheet" type="text/css">
<title>Member's Information</title>
</head>
<body>
<table class="table9_4" border="1"  align="center"  width="80%">
    <tr align="center"   bgcolor="lightblue">
      <th><b>ID</b></th>
      <th><b>PASSWORD</b></th>
      <th><b>NAME</b></th>
      <th><b>EMAIL</b></th>
      <th><b>JOIN DATE</b></th>
      <th><b>DELETE</b></th>
   </tr>
   
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center">
      <td>${member.id}</td>
      <td>${member.pwd}</td>
      <td>${member.name}</td>
      <td>${member.email}</td>
      <td>${member.joinDate}</td>
      <td><a href="${contextPath}/member/removeMember.do?id=${member.id }">DELETE</a></td>
    </tr>
  </c:forEach>   
</table>
<a  class="btn blue rounded" href="${contextPath}/member/memberForm.do"><h1 style="text-align:center">JOIN MEMBERS</h1></a>
</body>
</html>
