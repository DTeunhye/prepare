<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"
 %>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <style>
      #container {
        width: 100%;
        margin: 0px auto;
          text-align:center;
        border: 0px solid #bcbcbc;
        background-color: white;
      }
      #header {
        padding: 0px;
        margin-bottom: 0px;
        border: 0px solid #bcbcbc;
        background-color: white;
      }
      #sidebar-left {
        width: 13%;
        height:500px;
        padding: 0px;
        margin-right: 0px;
        margin-bottom: 0px;
        float: left;
        background-color: lightpink;
        border: 4px solid #bcbcbc;
        font-size:12px;
      }
      #content {
        width: 75%;
        padding: 0px;
        margin-right: 0px;
        float: left;
        border: 0px solid #bcbcbc;
      }
      #footer {
        clear: both;
        padding: 5px;
        border: 4px solid #bcbcbc;
         background-color: lightblue;
      }
      
    </style>
    <title><tiles:insertAttribute name="title" /></title>
  </head>
    <body>
    <div id="container">
      <div id="header">
         <tiles:insertAttribute name="header"/>
      </div>
      <div id="sidebar-left">
          <tiles:insertAttribute name="side"/> 
      </div>
      <div id="content">
          <tiles:insertAttribute name="body"/>
      </div>
      <div id="footer">
          <tiles:insertAttribute name="footer"/>
      </div>
    </div>
  </body>
</html>