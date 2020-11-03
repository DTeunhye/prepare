<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link href="${contextPath}/resources/style/style.css?ver=1" rel="stylesheet" type="text/css">
  <title>Header</title>
</head>
<body>
<table border=0  width="90%" >
  <tr>
     <td>
		<a href="${contextPath}/main.do">
			<img src="${contextPath}/resources/image/totoro01.jpg" style="width:170px; heigh:140px;" />
		</a>
     </td>
     <td>
       <h1><a href="${contextPath}/main.do"><font size=80>Kwon's TOTORO House</font></a></h1>
     </td>
     
     <td>
       <c:choose>
          <c:when test="${isLogOn == true  && member!= null}">
            <h3> ${member.name }님! <br> Welcome to my home page! </h3>
            <a class="btn red rounded" href="${contextPath}/member/logout.do"><h3>logout</h3></a>
          </c:when>
          <c:otherwise>
	        <a class="btn yellow rounded" href="${contextPath}/member/loginForm.do"><h3>login</h3></a>
	      </c:otherwise>
	   </c:choose>     
     </td>
  </tr>
</table>
</body>
</html>