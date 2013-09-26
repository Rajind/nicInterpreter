<%@page import="org.joda.time.LocalDate"%>
<%@page import="nicApp.NicDecode"%>
<%@page import="nicApp.NicProp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>NIC Interpreter Results</title>
    <h1>Nic Interpreter results</h1>
    <h3>Your Details are</h3>
    <%
      String nic = request.getParameter("nic");
      NicDecode decoder = new NicDecode();
      
      NicProp prop = decoder.createNicProp(nic);
      decoder.calculate(prop);
      

      String vote = decoder.getVote();
      String gender = decoder.getGender();
      LocalDate date = decoder.getdate();
      int record = decoder.getRecord();
    %>
    Date = <%=date%>
    <br>
    <%=vote%>
    <br>
    <%=gender%>
    <br>
    Record = <%=record%>
  
</head>
<body>
</body>
</html>