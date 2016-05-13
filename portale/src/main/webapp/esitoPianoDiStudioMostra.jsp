<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Piano di Studi</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<%@ include file="header.html" %>
	<div id="container">
	<h1><% out.print(request.getSession().getAttribute("matricola"));%></h1>
	<form method="post" action="sceltaStudentePianoDiStudioMostra.do">
	<% 
		if(request.getSession().getAttribute("tipoEsito")!=null)
		{
			if(request.getSession().getAttribute("tipoEsito").toString().length()>2)
			 {out.print("<table align='center'><tr><th>ID</th><th>Nome</th><th>Descrizione</th><th>CFU</th></tr>");
			out.print(request.getSession().getAttribute("tipoEsito"));}
			else
				out.print("Nessun Piano di Studi trovato");
			request.getSession().removeAttribute("tipoEsito");
		}
		else
			out.print("Errore Sconosciuto");  
	%>
	</form>
	</div>
</body>
</html>