<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<jsp:useBean id="ebook"
	type="rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook"
	scope="request"></jsp:useBean>
<jsp:useBean id="category" type="java.util.List" scope="request"></jsp:useBean>
<jsp:useBean id="language" type="java.util.List" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Update ${ebook.title}</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
<link href="./listCategory.css" rel="stylesheet" type="text/css" />

<link href="./bootstrap.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body onload="loadNow()">


	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="./index.jsp">E-Book shop</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">

			<form class="navbar-form navbar-left">


				<!-- meni kada korisnik nije ulogovan -->
				<c:if
					test="${sessionScope.administrator == null && sessionScope.subscriber== null}">
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="./index.jsp">Home</a></li>
							<li><a href="./ReadControllerEbooks">E-books</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Category <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="./PrepareReadControllerCategory">See all</a></li>
									<li role="separator" class="divider"></li>
									<li class="dropdown-header">See more</li>
									<li><a href="./FindCategory?categorySelect=Sci-fi">Sci-fi</a></li>
									<li><a href="./FindCategory?categorySelect=Comic">Comic</a></li>
									<li><a href="./FindCategory?categorySelect=Mystery">Mystery</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->

				</c:if>
				<!-- Meni kada je korisnik ulogovan kao ADMIN -->
				<c:if test="${sessionScope.administrator==true}">
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="./index.jsp">Home</a></li>
							<li><a href="./ReadControllerEbooks">E-books</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Category <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="./PrepareReadControllerCategory">See all</a></li>
									<li role="separator" class="divider"></li>
									<li class="dropdown-header">See more</li>
									<li><a href="./FindCategory?categorySelect=Sci-fi">Sci-fi</a></li>
									<li><a href="./FindCategory?categorySelect=Comic">Comic</a></li>
									<li><a href="./FindCategory?categorySelect=Mystery">Mystery</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Settings <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="./PrepareUpdateKorisnikLozinka">Change
											Password</a></li>
									<li><a href="./PrepareUpdateUser">Update profile</a></li>
									<li role="separator" class="divider"></li>
									<li class="dropdown-header"></li>
									<li><a href="./PrepareCreateControllerKorisnik">See
											all users</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</c:if>

				<!-- Meni kada je korisnik ulogovan kao MODERATOR -->
				<c:if test="${sessionScope.subscriber==true}">
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="./index.jsp">Home</a></li>
							<li><a href="./ReadControllerEbooks">E-books</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Category <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="./PrepareReadControllerCategory">See all</a></li>
									<li role="separator" class="divider"></li>
									<li class="dropdown-header">See more</li>
									<li><a href="./FindCategory?categorySelect=Sci-fi">Sci-fi</a></li>
									<li><a href="./FindCategory?categorySelect=Comic">Comic</a></li>
									<li><a href="./FindCategory?categorySelect=Mystery">Mystery</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Settings <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="./PrepareUpdateKorisnikLozinka">Change
											Password</a></li>
									<li><a href="./PrepareUpdateUser">Update profile</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</c:if>


			</form>


			<form class="navbar-form navbar-right">
				<c:if test="${sessionScope.admin!=null}">
					<p id="printName">${sessionScope.adminName}</p>
				</c:if>
				<c:if
					test="${sessionScope.administrator == null && sessionScope.subscriber== null }">
					<a class="dugme" href="./login.jsp">Sign in</a>

				</c:if>
				<c:if
					test="${sessionScope.administrator==true || sessionScope.subscriber==true}">
					<td><a class="dugme" href="./LogoutController">Log out</a></td>
				</c:if>

			</form>
		</div>
		<!--/.navbar-collapse -->
	</div>
	</nav>

	<script type="text/javascript">
		function loadNow() {
			$(window).load(function() {
				$('#editCategory').modal('show');
			});
		}
	</script>
	<!-- Modal -->
	<div id="editCategory" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Edit Category</h4>
				</div>
				<div class="modal-body">
					<c:if test="${sessionScope.admin!=null}">
						<form action="./UpdateControllerAutomobili" method="post"
							accept-charset="ISO-8859-1">
							<!-- 	    									onsubmit="return checkForm(this);"
 -->
							<c:if test="${sessionScope.admin !=null}">
								<input type="hidden" class="form-control" name="ebookID"
									value="${ebook.id}">

								<div class="input-group">
									<span class="input-group-addon">Title</span> <input type="text"
										class="form-control" value="${ebook.title }" name="title"
										required>
								</div>
								<div class="input-group">

									<span class="input-group-addon">Author</span> <input
										type="text" name="author" value="${ebook.author }"
										class="form-control" required>
								</div>
								<div class="input-group">

									<span class="input-group-addon">Filename</span> <input
										type="file" class="form-control" value="${ebook.filename }"
										name="filename">
								</div>

								<div class="input-group">
									<span class="input-group-addon">Year</span> <input
										type="number" name="year" class="form-control"
										value="${ebook.year }" required>
								</div>

								<div class="input-group" id="tipDiv">
									<p>Mime Type:</p>
									<select size="1" style="height: 35px; width: 100%;"
										name="mimeSelect">
										<option value="pdf">PDF</option>



									</select>
								</div>

								<div class="input-group" id="l">
									<p>Language:</p>
									<select size="1" style="height: 35px; width: 100%;"
										name="langSelect">
										<c:forEach items="${language}" var="lang">
											<option value="${lang.languageID}">${lang.name}</option>
										</c:forEach>
									</select>
								</div>

								<div class="input-group" id=",">
									<p>Category:</p>
									<select size="1" style="height: 35px; width: 100%;"
										name="categorySelect">
										<c:forEach items="${category}" var="cat">
											<option value="${cat.categoryID}">${cat.name}</option>
										</c:forEach>
									</select>
								</div>



								<div class="modal-footer">
									<button type="button" class="dugme" data-dismiss="modal"
										style="width: 90px; margin-right: 10px;">Cancel</button>
									<button class="dugme" id="submit" type="submit"
										class="btn-success" style="width: 90px; float: right;">Submit</button>

								</div>

							</c:if>
						</form>

					</c:if>


				</div>

			</div>

		</div>
	</div>

	<script src="./bootstrap.min.js"></script>
	<script src="./bootstrap.js"></script>
	<script src="./jquery.js" type="text/javascript"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="./bootstrap.min.js"></script>
</body>
</html>