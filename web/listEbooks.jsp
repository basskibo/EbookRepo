<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="ebooks" type="java.util.List" scope="request"></jsp:useBean>
<jsp:useBean id="category" type="java.util.List" scope="request"></jsp:useBean>

<fmt:setBundle basename="messages.messages"/>

<html>
	<head>
		<title>E-Books</title>
		<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
		<link href="./bootstrap.css" rel="stylesheet" type="text/css" />
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
		
		<!-- (Optional) Latest compiled and minified JavaScript translation files -->
		
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		
		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
		<meta HTTP-EQUIV="Expires" CONTENT="-1">
		
		
	</head>
	<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="./index.jsp">E-Book shop</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
       
         <form class="navbar-form navbar-left">
         
          
        <!-- meni kada korisnik nije ulogovan -->
	         <c:if test="${sessionScope.administrator == null && sessionScope.moderator== null}">	
								<!-- 	<td><a class="dugme" href="./ReadControllerEbooks">Ebooks</a></td>
									<td><a class="dugme" href="./PrepareReadControllerProizvodjac">Category</a></td>
									 -->
									    <div id="navbar" class="navbar-collapse collapse">
								          <ul class="nav navbar-nav">
								            <li ><a href="./index.jsp">Home</a></li>
								            <li class="active"><a  href="./ReadControllerEbooks">E-books</a></li>
								            <li class="dropdown">
								              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Category <span class="caret"></span></a>
								              <ul class="dropdown-menu">
								                <li><a href="./PrepareReadControllerCategory">See all</a></li> 
								                <li role="separator" class="divider"></li>
								                <li class="dropdown-header">See more</li>
								            	<c:forEach items="${category}" var="cat">
								            			 <li><a href="./FindCategory?">${cat.name}</a></li>
								            	
												</c:forEach>
													<li><a href="#">nesto</a></li>
													<li><a href="#">nesto2</a></li>
												
								              </ul>
								            </li>
								          </ul>
								        </div><!--/.nav-collapse -->
									
								
			</c:if>
			
			<!-- Meni kada je korisnik ulogovan kao ADMIN -->
			<c:if test="${sessionScope.administrator==true}">	
						 <div id="navbar" class="navbar-collapse collapse">
											          <ul class="nav navbar-nav">
											            <li ><a href="./index.jsp">Home</a></li>
								            			<li class="active"><a  href="./ReadControllerEbooks">E-books</a></li>
											            <li class="dropdown">
											              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Category <span class="caret"></span></a>
											              <ul class="dropdown-menu">
											                <li><a href="./PrepareReadControllerCategory">See all</a></li>
											                <li><a href="#">Sci-fi</a></li>
											                <li><a href="#">Drama</a></li>
											                <li role="separator" class="divider"></li>
											                <li class="dropdown-header">See more</li>
											                <li><a href="#">Epska poezija</a></li>
											                <li><a href="#">Fantazija</a></li>
											              </ul>
											            </li>
											             <li class="dropdown">
											              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Settings <span class="caret"></span></a>
											              <ul class="dropdown-menu">
											                <li><a href="./PrepareReadControllerCategory">Change Password</a></li>
											                <li><a href="#">Change data</a></li>
											                <li role="separator" class="divider"></li>
											                <li class="dropdown-header"></li>
											                <li><a href="#">See all users</a></li>
											              </ul>
											            </li>
											          </ul>
						</div><!--/.nav-collapse -->
												
							
			</c:if>
			
			
			<!-- Meni kada je korisnik ulogovan kao MODERATOR -->
			<c:if test="${sessionScope.moderator==true}">
							<div id="navbar" class="navbar-collapse collapse">
											          <ul class="nav navbar-nav">
											            <li ><a href="./index.jsp">Home</a></li>
								            			<li class="active"><a  href="./ReadControllerEbooks">E-books</a></li>
											            <li class="dropdown">
											              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Category <span class="caret"></span></a>
											              <ul class="dropdown-menu">
											                <li><a href="./PrepareReadControllerCategory">See all</a></li>
											                <li><a href="#">Sci-fi</a></li>
											                <li><a href="#">Drama</a></li>
											                <li role="separator" class="divider"></li>
											                <li class="dropdown-header">See more</li>
											                <li><a href="#">Epska poezija</a></li>
											                <li><a href="#">Fantazija</a></li>
											              </ul>
											            </li>
											             <li class="dropdown">
											              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Settings <span class="caret"></span></a>
											              <ul class="dropdown-menu">
											                <li><a href="./PrepareReadControllerCategory">Change Password</a></li>
											                <li><a href="#">Change data</a></li>
											                <li role="separator" class="divider"></li>
											                <li class="dropdown-header"></li>
											                <li><a href="#">See all users</a></li>
											              </ul>
											            </li>
											          </ul>
						</div><!--/.nav-collapse -->
			</c:if>
			
			
			
			
         
         </form>
        
        
          <form class="navbar-form navbar-right">
	            <c:if test="${sessionScope.admin!=null}">
					    <p id="printName"> ${sessionScope.adminName}</p>        	
				</c:if>
				<c:if test="${sessionScope.administrator == null && sessionScope.moderator == null }"> 
						<a class="dugme" href="./login.jsp">Sign in</a>
				
				</c:if>
				<c:if test="${sessionScope.administrator==true || sessionScope.moderator==true}">
				           			<td> <a class="dugme" href="./LogoutController">Log out</a> </td>
				</c:if>	
					
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
		
		
		
		
					  <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="jumbotron">
	      <div class="container">
	       <!--  <h1>List of ebooks</h1>
	        	<p >Find what you like or choose category you like</p>
	        	<div id="filtriranje"> -->
	        	<div class="page-header">
			        <h1>List of all books</h1>
			        <p class="lead">Find book you are searching for.</p>
			        
			    <form action="./FindCategory" method="get" accept-charset="ISO-8859-1" ">
			    
			    
			   		<select  size="1" style="height:35px;width:30%;" name="categorySelect" >
						<c:forEach items="${category}" var="cat">
							<option value="${cat.name}">${cat.name}</option>
						</c:forEach>
					</select>
					<button class="dugme" id="submit" type="submit" class="btn-success" style="width:90px; ">Submit</button>
					
			    </form>
			    
			
										
				<table >
					
					
					<tr>	
					
						  <div class="row">
					        <div id="rowTitle"  class="col-md-2">Title</div>
					        <div id="rowTitle"  class="col-md-2">Author</div>
					        <div id="rowTitle"  class="col-md-2">Publication year</div>
					        <div id="rowTitle"  class="col-md-2">Language</div>
					    	<div id="rowTitle"  class="col-md-2">Category</div>
					    	<c:if test="${sessionScope.admin!=null}">
  												<div id="rowTitle" class="col-md-2">
  														Change

  												</div>
							</c:if>		
					        
					      </div>	
					</tr>
				
					<c:forEach items = "${ebooks}" var = "ebook">
						<tr>
							 <div class="row">
         								<div id="rowBook" class="col-md-2">${ebook.title}</div>
										<div id="rowBook" class="col-md-2">${ebook.author}</div>
										<div id="rowBook" class="col-md-2">${ebook.year}</div>
										<div id="rowBook" class="col-md-2">${ebook.language.name}</div>
										<div id="rowBook" class="col-md-2">${ebook.category.name}</div>
  										<c:if test="${sessionScope.admin!=null}">
  												<div id="rowBook" class="col-md-2">
  													<a class="btnAR" href="./login.jsp">Edit</a>
  													<a class="btnAR" href="./DeleteControllerAutomobili?ebook_id=${ebook.id }">Delete</a>
  													
  												</div>
										</c:if>								
       						 </div>
						</tr>
						
						</c:forEach>
						
						<c:forEach var="item" items="${ ebooks }">
												
					<%-- 	 <div class="col-sm-4">
					      <div class="tile blue">
					        <h3 class="title" >${item.title }</h3>
					        <p class="info">Author: ${item.author }</p>
										<p class="info">Year: ${item.year }</p>
										<p class="info">Language: ${item.language.name }</p>
										<p class="info">Category: ${item.category.name}</p>
					      </div>
					    </div>  --%>
					<div class="row1">
					  <div class="col-sm-6 col-md-3x">
					    <div class="thumbnail">
					      <img src="http://res-5.cloudinary.com/cloudinary/image/upload/c_limit,h_540,w_770/eu84dbcuxv7uubiy9q70g.png" alt="...">
					      <div class="caption">
					        <h3>${item.title }</h3>
					          <p class="info">Author: ${item.author }</p>
										<p class="info">Year: ${item.year }</p>
										<p class="info">Language: ${item.language.name }</p>
										<p class="info">Category: ${item.category.name}</p>
					        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
					      </div>
					    </div>
					  </div>
					</div>
					
					
				          
				         </c:forEach>				
									
				</table>	
				

       
       
				<nav>
				  <ul class="pagination">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
       
       
       
       
       
					
				</div>
				<!-- CONTAINER -->

										<script type="text/javascript">
										
											  function onlyCategory(name)
											  { 
												  
												  
												  alert("Kategorija je: " +name);
												  
												  
											  }
										
										</script>
				
				
				
				
				
				
				
				
				<script>
function myFunction() {
    var x;
    if (confirm("Press a button!") == true) {
        x = "You pressed OK!";
    } else {
        x = "You pressed Cancel!";
    }
    document.getElementById("demo").innerHTML = x;
}
</script>
	      </div>
		
		
	  <script src="./jquery.js" type="text/javascript"></script>

		
		<script src="./slider.js"></script>
		
	    <script src="./bootstrap.min.js"></script>
	    <script src="./bootstrap.js"></script>
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	    <script src="./bootstrap.min.js"></script>
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		
	</body>
</html>