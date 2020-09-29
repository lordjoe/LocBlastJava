<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 4/18/2020
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="com.lordjoe.blast.*" %>
<html>
  <head>
    <title>LIST Cluster Access</title>
    <link rel="shortcut icon" href="./includes/Listfavicon.ico" type="image/x-icon">
  </head>
  <body>
  <div class="page-logo">
    <a href="https://www.list.lu/"><img src="./includes/LISTLogo.png" alt=" "/></a>
  </div>
  <H1>Welcome to LIST Cluster Access</H1>
  <% 
    NetClientGet.guaranteeServer();
  %>
  <a href="locblast.jsp">LocBlast</a></p>
  <a href="comet.jsp">Comet</a></p>
 <a href="/SlurmProject/blastRunner?stop=true">Force Server Restart</a> <p/>
  </body>
</html>
