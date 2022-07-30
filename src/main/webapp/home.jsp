<%@page import="com.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
User user = (User) session.getAttribute("user-obj");
if (user == null) {
	session.setAttribute("login-msg", "Please Login First");
	response.sendRedirect("login.jsp");
}
%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<!-- Navbar -->

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
						
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
					</li>

					<li class="nav-item"><a class="nav-link enabled"
						href="register.jsp" tabindex="-1" aria-enabled="true">Register</a>
					</li>
				</ul>

			</div>
		</div>
	</nav>

	<!-- navbar ends -->

					
	
	<div class="container">
		<div
			class="row d-flex justify-content-center align-items-center mt-4 p-5">
			<div class="col-md-6">
				<div class="card">

					<%
					User user1 = (User) session.getAttribute("user-obj");
					%>
					<%
					if (user != null) {
					%>

					<div class="card-body">
						<h1>
							Name:
							<%=user1.getName()%>
						</h1>
						<h1>
							Email:
							<%=user1.getEmail()%>
						</h1>
						<div class="container text-center">
							<a class="btn btn-primary text-white" href="logoutServlet">Log
								Out</a>
						</div>
					</div>
					<%
					}
					%>


				</div>
			</div>
		</div>
	</div>

</body>
</html>