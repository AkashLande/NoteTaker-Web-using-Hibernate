<%@page import="com.entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes</title>
<%@include file="all_JS_CSS.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getfactory().openSession();
				Query q = s.createQuery("from Note ");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top m-1 mx-auto" style="max-width: 80px;"
						src="img/pencil.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text">
							<%=note.getContent()%>
						</p>
						<p>
							<b class='text-primary'> <%=note.getAddedDate()%></b>
						</p>
						<div class="container text-center mt-2">
							<a href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a> <a
								href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>

			</div>
		</div>

	</div>
</body>
</html>