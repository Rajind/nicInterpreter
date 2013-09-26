<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nic Interpreter Home</title>
    </head>
    <body>
    <h2>Srilankan Citizen's Nic Interpreter</h2>
	<h3>
		Written by
		<%=java.lang.System.getProperty("user.name")%></h3>
		<form action="results.jsp" method="get">
			NIC <input type="text" name="nic">
			<br>
			<input type="submit">
		</form>
    </body>
</html>
