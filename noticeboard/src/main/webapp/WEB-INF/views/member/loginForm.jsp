<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="result" value="${param.result }" />
<%
   request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link href="${contextPath}/resources/style/style.css?ver=1" rel="stylesheet" type="text/css">
<title>Login</title>
<c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("You wrong input your ID OR PASSWORD!");
	    }
	  </script>
	</c:when>
</c:choose>  
</head>

<body>
<form name="frmLogin" method="post"  action="${contextPath}/member/login.do">
   <table border="1"  width="80%" align="center" >
      <tr align="center">
         <td>ID</td>
         <td>PW</td>
      </tr>
      <tr align="center">
         <td>
	    <input type="text" name="id" value="" size="20">
	 </td>
         <td>
	    <input type="password" name="pwd" value="" size="20">
	 </td>
      </tr>
      <tr align="center">
         <td colspan="2">
            <input class="btn blue rounded" type="submit" value="LOGIN" > 
            <input class="btn green rounded" type="reset"  value="REINPUT" > 
         </td>
      </tr>
   </table>
</form>
</body>
</html>
