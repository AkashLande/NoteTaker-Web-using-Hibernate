<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_JS_CSS.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	<h4>&nbsp;Please Enter Note Details...</h4>
	<br>
	<!-- This is add form -->
	<form action="SaveNoteServlet" method="post">
		<div class="form-group">
			<label for="title">&nbsp;Note Title</label> <input name="title"
				required type="text" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter title here" />
		</div>
		<div class="form-group">
			<label for="content">&nbsp;Note Content</label>
			<textarea name="content" required id="content"
				placeholder="Enter content here" class="form-control"
				style="height: 200px"></textarea>
		</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add note</button>
		</div>
	</form>
</body>
</html>