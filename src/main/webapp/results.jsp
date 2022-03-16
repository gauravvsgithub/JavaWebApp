<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // http 1.1
		response.setHeader("Pragma", "no-cache"); // http 1.0
		response.setHeader("Expires", "0"); // proxies
		if(session.getAttribute("username")==null) {
			response.sendRedirect("login.jsp");
		}
	
%>
	<form action="Logout" class="nav navbar-dark bg-dark p-2 mb-3 m-1 justify-content-end rounded">
			<input type="submit" class="btn btn-outline-light" value="Logout">
	</form>
	<div class="container my-3">
		<h2> Top <u><i><%=request.getAttribute("genre")%></i></u> movies For You!</h2>
	
		<% ArrayList<String> movies = 
           (ArrayList<String>)request.getAttribute("movies");
		for(String movie : movies) {%>
		<ul>
			<li><%=movie %></li>
		</ul>
			
		<%}%>
	</div>
	
	            
	 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	 

</body>
</html>