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
    <title>Index Page</title>
  </head>
  <body>
  <H1>Welcome to locblast</H1>
  <% 
    NetClientGet.guaranteeServer();
  %>
  <a href="locblast.jsp">LocBlast</a></p>
  <a href="/SlurmProject/myIndex">Caller</a>
 <a href="/SlurmProject/blastRunner?Sample=sequence">Call With Sequence</a> <p/>
 <a href="/SlurmProject/blastRunner?Sample=file">Call With File</a> <p/>
 <a href="/SlurmProject/blastRunner?stop=true">Stop</a> <p/>
  </body>
</html>
