<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="category" type="java.util.List" scope="request"></jsp:useBean>

	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
	<link href="./listCategory.css" rel="stylesheet" type="text/css" />
	
	<link href="./bootstrap.css" rel="stylesheet" type="text/css" /><title>All categories</title>
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
								            <li class="active"><a href="./index.jsp">Home</a></li>
								            <li><a  href="./ReadControllerEbooks">E-books</a></li>
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
								          </ul>
								        </div><!--/.nav-collapse -->
									
								
			</c:if>
			
			<!-- Meni kada je korisnik ulogovan kao ADMIN -->
			<c:if test="${sessionScope.administrator==true}">	
						 <div id="navbar" class="navbar-collapse collapse">
											          <ul class="nav navbar-nav">
											            <li class="active"><a href="./index.jsp">Home</a></li>
											            <li><a  href="./ReadControllerEbooks">E-books</a></li>
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
												
							<!-- 	<a class="dugme" href="./PrepareCreateControllAutomobil" class="tdli" >Ebooks</a>
								<a class="dugme" href="./PrepareCreateControllerProizvodjac"  class="tdli">Category</a>
								<a class="dugme" href="./PrepareCreateControllerKorisnik" class="tdli">Users</a>
								<a class="dugme" href="./PrepereUpdateControllerKorisnik" class="tdli">Change data</a>
								<a class="dugme" href="./PrepareUpdateKorisnikLozinka" class="tdli">Change Password</a>
									 -->
			</c:if>
			
			<!-- Meni kada je korisnik ulogovan kao MODERATOR -->
			<c:if test="${sessionScope.moderator==true}">
							<div id="navbar" class="navbar-collapse collapse">
											          <ul class="nav navbar-nav">
											            <li class="active"><a href="./index.jsp">Home</a></li>
											            <li><a  href="./ReadControllerEbooks">E-books</a></li>
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
			        <h1>List of all category</h1>
			        <p class="lead">Here you can see full list of categories.</p>
			      
			    </div>
					
				</div>
				
				
				
				
		
      
      
		<div class="container">
				
			
							
				<table id="listaVozila">
					
					
					<tr>	
					
						  <div class="row">
					        <div id="rowTitle"  class="col-md-1">Number</div>
					    
					    	<div id="rowTitle"  class="col-md-2">Category</div>
					    	<c:if test="${sessionScope.admin!=null}">
  									<div id="rowTitle"  class="col-md-2">Change/Remove</div>
						
							</c:if>	
					        <c:if test="${sessionScope.admin ==null}">
					        
					        	<div id="rowTitle"  class="col-md-2">E-books</div>
					        </c:if>
					        
					      </div>	
					</tr>
				
					<c:forEach items = "${category}" var = "cat">
						<tr>
							 <div class="row">
										<c:set var="i" value="${i+1}"/>
										<div id="rowBook" class="col-md-1">
											<c:out value="${i}"/>.
										</div>
										<div id="rowBook" class="col-md-2">${cat.name}</div>
										
  										<c:if test="${sessionScope.admin!=null}">
  												<div id="rowBook" class="col-md-2">
  													<a class="btnAR"  href="./login.jsp">Add</a>
  													<a class="btnAR" href="./login.jsp">Remove</a>
  													
  												</div>
										</c:if>	
					        <c:if test="${sessionScope.admin ==null}">
										<div id="rowBook" class="col-md-2">
											<a class="btnAR"  href="#">See more</a>
										</div>
							</c:if>
							
																	
       						 </div>
						</tr>
						
						</c:forEach>	
					
					
				</table>
				
				
			<c:if test="${sessionScope.admin==null}">
				
				<c:forEach items = "${category}" var = "cat">
					
				      <!-- Example row of columns -->
				      <div class="row">
				        <div class="col-md-4">
				              	<img src="http://vectyr.com/wp-content/uploads/2012/12/BookCover5_5x8_5_BW_240.jpg" width="100" height="100"> 
				        
				          <h2>${cat.name}</h2>
				          <p id="printNameP">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
				          <p><a class="btn btn-default" href="./login.jsp" role="button">View details &raquo;</a></p>
				        </div>
				    
				      </div>
							<!-- navigacija -->
				</c:forEach>
			</c:if>
			
			
			
			
			 
			<c:if test="${sessionScope.admin!=null}">
				<table>
					<tr>
						<td>Nesto</td>
					</tr>
					<tr>
						<td>saga</td>
					</tr>
					<tr>
						<td>gsag</td>
					</tr>
				
				
				</table>
			
			
			
			
			</c:if>
			 
			 
			 
			
			</div>
				
				
	      </div>
       </div>		
		
		 <script src="./bootstrap.min.js"></script>
	    <script src="./bootstrap.js"></script>
	    <script src="./jquery.js" type="text/javascript"></script>
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	    <script src="./bootstrap.min.js"></script>
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <script src="./ie10-viewport-bug-workaround.js"></script>
		<!-- body -->
	
</body>
</html>