<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sezione Studenti</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<%@ include file="header.html" %>
	<div id="container">
	<h1>Sezione Studenti</h1>
	<form method="post" action="indexStudenti.do">
		<p><input class="blueButton" type="submit" name="scelta" value="Inserisci Studente" /></p>
		<p><input class="blueButton" type="submit" name="scelta" value="Trova Studente" /></p>
	</form>
	</div>
</body>
</html>