<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Note taker</title>
<%@include file="all_JS_CSS.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	<div class="card py-5">
		<img alt="" class="img-fluid mx-auto" style="max-width: 400px;"
			src="img/pencil.png">
		<h1 class="text-primary text-uppercase text-center mt-3">Start
			taking your notes</h1>
		<div class="container text-center">
			<a href="add_notes.jsp">
				<button class="btn btn-outline-primary text-center">Start
					Here</button>
			</a>
		</div>

	</div>
</body>
</html>