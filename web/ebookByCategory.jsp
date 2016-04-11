<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="ebooks" type="java.util.List" scope="request"></jsp:useBean>
<jsp:useBean id="category" type="rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category" scope="request"></jsp:useBean>

<fmt:setBundle basename="messages.messages"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> +ebooks</title>
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
	<%-- <table>
	<c:forEach var="item" items="${ ebooks }">
	
		<c:if test="${item.category.name == category.name }">
					
						<div class="col-md-4">
				          <h2><a id="naslovKnjige" href="Preview?bookId=${item.id }">
										${item.title }</a></h2>
										
								
										<p class="info">Author: ${item.author }</p>
										<p class="info">Year: ${item.year }</p>
										<p class="info">Language: ${item.language.name }</p>
										<p class="info">Category: ${item.category.name}</p>
								
								
						  <c:if test="${sessionScope.admin==null}">
						  <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
						  
							</c:if>	
					      <c:if test="${sessionScope.admin!=null}">
				          <p><a class="btnAR" href="#">Edit</a></p>
  						  <p><a class="btnAR" href="#">Remove</a></p>
  						  
  						  </c:if>
				          </div>
				   
				          
		
		
		
		</c:if>
						
				         </c:forEach>	
				         
				        
	</table> --%>
	<%-- 
	<c:forEach var="item" items="${ ebooks }">
				<c:if test="${item.category.name == category.name }">
												
						 <div class="col-sm-4">
					      <div class="tile blue">
					        <h3 class="title" >${item.title }</h3>
					        <p class="info">Author: ${item.author }</p>
										<p class="info">Year: ${item.year }</p>
										<p class="info">Language: ${item.language.name }</p>
										<p class="info">Category: ${item.category.name}</p>
					      </div>
					    </div> 
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
					
					
				          </c:if>
				         </c:forEach>	
									 --%>
									 
									 
									 
									 
									 
									 
									 
									 
									   <div class="jumbotron">
	      <div class="container">
	       <!--  <h1>List of ebooks</h1>
	        	<p >Find what you like or choose category you like</p>
	        	<div id="filtriranje"> -->
	        	<div class="page-header">
			        <h1>List of all  ${category.name } books</h1>
			      

						
						
						<c:forEach var="item" items="${ ebooks }">
								<c:if test="${item.category.name == category.name }">
						
							  <div class="col-md-4">
							    <div class="thumbnail">
<!-- 							      <img src="http://res-5.cloudinary.com/cloudinary/image/upload/c_limit,h_540,w_770/eu84dbcuxv7uubiy9q70g.png" alt="...">
 -->							      <div data-toggle="collapse" data-target="#demo${item.id } class="caption">
							        		<h3>${item.title }</h3>
							          			
  
							      		</div>
									
									<button class="btn btn-default" data-toggle="collapse" data-target="#demo${item.id }">More details</button>

<!-- 							        <p><a href="#" class="btn btn-primary" role="button">See more</a> 
		 -->							        <a href="#" class="btn btn-default" role="button">Download</a></p>
									        <!-- DODATI DA SAMO SUBSCRIBER TE VRSTE MOZE DA DOWNLOADUJE -->
									      <div id="demo${item.id }" class="collapse">
												<p class="info"><b>Author:</b> ${item.author }</p>
												<p class="info"><b>Year:</b> ${item.year }</p>
												<p class="info"><b>Language:</b> ${item.language.name }</p>
												<p class="info"><b>Category:</b> ${item.category.name}</p>
									</div>
							    </div>
							  </div>
							</c:if>
				        </c:forEach>				

				
								    
	    
	    	</div>

	</div>
	 
   
					
				</div>
					
</body>
</html>