<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<jsp:useBean id="category" type="java.util.List" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
<link href="./listCategory.css" rel="stylesheet" type="text/css" />

<link href="./bootstrap.css" rel="stylesheet" type="text/css" />
<title>All categories</title>
</head>


<body>
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



	<!-- Main jumbotron for a primary marketing message or call to action -->

	<div class="jumbotron">
		<div class="container">
			<!--  <h1>List of ebooks</h1>
	        	<p >Find what you like or choose category you like</p>
	        	<div id="filtriranje"> -->
			<div class="page-header">
				<h1>List of all category</h1>
				<p class="lead">Here you can see full list of categories.</p>

			</div>

		</div>

		<div class="container">
			<table id="listaVozila">
				<tr>
					<div class="row">
						<div id="rowTitle" class="col-md-1">Number</div>

						<div id="rowTitle" class="col-md-3">Category</div>
						<c:if test="${sessionScope.admin!=null}">
							<div id="rowTitle" class="col-md-2 ">Change/Remove</div>

						</c:if>
						<c:if test="${sessionScope.admin ==null}">

							<div id="rowTitle" class="col-md-2">E-books</div>
						</c:if>

					</div>
				</tr>

				<c:forEach items="${category}" var="cat">
					<tr>
						<div class="row">
							<c:set var="i" value="${i+1}" />
							<div id="rowBook" class="col-md-1">
								<c:out value="${i}" />
								.
							</div>
							<div id="rowBook" class="col-md-3">${cat.name}</div>

							<c:if test="${sessionScope.administrator != null}">
								<div id="rowBook" class="col-md-2">
									<a class="btnAR"
										href="./PrepareUpdateCategory?category_id=${cat.categoryID }">Edit</a>
									<a class="btnAR"
										href="./DeleteControllerCategory?category_id=${cat.categoryID }">Remove</a>
								</div>
							</c:if>
							<c:if test="${sessionScope.administrator == null}">
								<div id="rowBook" class="col-md-2">
									<a class="btnAR" name="categorySelect"
										href="./FindCategoryBooks?category_id=${cat.categoryID }">See
										all</a>
								</div>
							</c:if>


						</div>
					</tr>

				</c:forEach>


			</table>


			<c:if test="${sessionScope.administrator == null}">
				<h2>Currently available categories</h2>
				<c:forEach items="${category}" var="cat">

					<!-- Example row of columns -->
					<div class="row1">
						<div class="col-md-2" style="margin: 10px 10px 10px 0px;height: 400px;">
							<img
								src="http://vectyr.com/wp-content/uploads/2012/12/BookCover5_5x8_5_BW_240.jpg"
								width="100" height="100">

							<h3>${cat.name}</h3>
							<p id="printNameP">You can find more about ${cat.name } if
								you click button below.</p>
							<p>
								<a class="btn btn-default" href="./FindCategoryBooks?category_id=${cat.categoryID }" role="button">View
									details &raquo;</a>
							</p>
						</div>

					</div>
					<!-- navigacija -->
				</c:forEach>
			</c:if>

			<c:if test="${sessionScope.administrator == true}">

				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-info btn-lg"
					data-toggle="modal" data-target="#newCategory">Create new
					Category</button>
			</c:if>



			<!-- Modal -->
			<div id="newCategory" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Create Category</h4>
						</div>
						<div class="modal-body">
							<c:if test="${sessionScope.admin!=null}">
								<h2>Add new Category</h2>
								<form action="./CreateControllerCategory" method="post"
									accept-charset="ISO-8859-1">
									<c:if test="${sessionScope.admin !=null}">

										<div class="input-group">
											<span class="input-group-addon">Category Name</span> <input
												type="text" class="form-control" name="cName" required>
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


			<div id="deleteModal" class="modal fade" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">�</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Confirm</h4>
						</div>
						<div class="modal-body">
							<div class="modalMsg">
								<p>Are you sure want to remove item ?</p>
							</div>
							<div class="actionsBtns">
								<a class="btn btn-default"
									href="./DeleteControllerCategory?category_id=${cat.categoryID }">Yes</a>

								<%-- 			            <button onclick="./DeleteControllerCategory?category_id=${cat.categoryID }" class="btn btn-default" ng-click="deleteItem()" data-dismiss="modal">Yes</button>
 --%>
								<button class="btn btn-default" data-dismiss="modal">No</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/modal-->




		</div>


	</div>
	</div>
	<script>
		function neka(cat) {
			confirm('Confirm delete');
			if (confirm) {
				alert("yes je izabran");
			}
			alert(cat);
		}
	</script>

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
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="./ie10-viewport-bug-workaround.js"></script>
	<!-- body -->

</body>
</html>