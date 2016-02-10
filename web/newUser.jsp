<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="users" type="java.util.List" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="./izmenaLicnihPodataka.css" rel="stylesheet" type="text/css" />
	<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
	<link href="./listCategory.css" rel="stylesheet" type="text/css" />
	<link href="./bootstrap.css" rel="stylesheet" type="text/css" /><title>All categories</title>
	
		
	<title>User control</title>
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
											                <li><a href="./PrepareUpdateKorisnikLozinka">Change Password</a></li>
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
											                <li><a href="./PrepareCreateControllerKorisnik">See all users</a></li>
											              </ul>
											            </li>
											          </ul>
						</div><!--/.nav-collapse -->
			</c:if>

         
         </form>
        
        
          <form class="navbar-form navbar-right">
	            <c:if test="${sessionScope.admin!=null}">
					    <p id="printName"> ${sessionScope.adminName} </p>        	
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



	<!-- <div >
	<form action="./CreateControllerKorisnik" method="post" accept-charset="ISO-8859-1">
		<table id="formaTabela">
			<tr>
				<td> <p>First Name:</p> <input type="text" style="height:20px" id="firstName" name= "firstName" required> </td>
				<td> <p>Last Name:</p> <input type="text" style="height:20px" id="lastName" name="lastName" required> </td>
				
			</tr>
			<tr>
				<td> <p>Username:</p> <input type="text" style="height:20px" id="username" name=""username"" required> </td>
				<td> <p>Password:</p> <input type="password" style="height:20px" id="userPassword" name="userPassword" required> </td>
	
			</tr>
			
			<tr>
				<td> <p>Password again:</p> <input type="password" style="height:20px" id="userPassword2" name="userPassword2" required> </td>
			</tr>
			<tr>
				<td> <p>Tip korisnika(Administrator/moderator):</p>  
				<select size="1" name="tip">
					<option value="subscriber">Subscriber</option>
					<option value="administrator">administrator</option>
				</select> 
				</td>
			</tr>
		</table>	
	<button id="registrujSe" type="submit" style="width:120px">Add</button>
	</form>
	</div>
	formaZaRegistraciju
	 -->
	 
	     
    <div class="jumbotron">
	      <div class="container">
	       <!--  <h1>List of ebooks</h1>
	        	<p >Find what you like or choose category you like</p>
	        	<div id="filtriranje"> -->
	        	<div class="page-header">
			        <h1>Change your password</h1>
			        <p class="lead">Here you can change your password.You have to enter your old password and then 2 times new password</p>
			      
			    </div>
					
    
    	

	    
					    <table id="listaVozila">
									
									
									<tr>	
									
										  <div class="row">
									        <div id="rowTitle"  class="col-md-2">First name</div>
									        <div id="rowTitle"  class="col-md-2">Last name</div>
									        <div id="rowTitle"  class="col-md-1">Username</div>
									    	<div id="rowTitle"  class="col-md-2">Category</div>
									    	<c:if test="${sessionScope.admin!=null}">
				  												<div id="rowTitle" class="col-md-2">
				  														Change
				
				  												</div>
														</c:if>		
									        
									      </div>	
									</tr>
								
									<c:forEach items = "${users}" var = "user">
										<tr>
											 <div class="row">
				         								<div id="rowBook" class="col-md-2">${user.firstName}</div>
														<div id="rowBook" class="col-md-2">${user.lastName}</div>
														<div id="rowBook" class="col-md-1">${user.username}</div>
														<c:if test="${user.category.name== null }">
															<div id="rowBook" class="col-md-2">No category</div>
														</c:if>
														<c:if test="${user.category.name!= null }">
															<div id="rowBook" class="col-md-2">${user.category.name}</div>
														</c:if>
				  										<c:if test="${sessionScope.admin!=null}">
				  												<div id="rowBook" class="col-md-2">
				  													<a class="btnAR" href="./login.jsp">Add</a>
				  													<a class="btnAR" href="./login.jsp">Remove</a>
				  													
				  												</div>
														</c:if>								
				       						 </div>
										</tr>
										
										</c:forEach>	
									
									
								</table>
								
	    		<form action="./UpdateUserPassword" method="post" accept-charset="ISO-8859-1">
					        		<c:if test="${sessionScope.admin !=null}">
					        		
								                	<div class="input-group">
									    				<span class="input-group-addon">First Name</span>
									    				<input type="text" class="form-control" id="username" name="username" required>
							  						</div>
							  						<div class="input-group">
							  					
									    				<span  class="input-group-addon">Last Name</span>
									    				<input type="password"  id="userPassword" name= "userPassword"  class="form-control" required>
								    				</div>
								    												                <div class="input-group">
								    				
									    				<span class="input-group-addon">Username</span>
									    				<input type="text" class="form-control" id="username" name="username">
									    			</div>
									                <div class="input-group">
								    				
									    				<span  class="input-group-addon">Password</span>
									    				<input type="password"  id="userPassword" name= "userPassword" class="form-control"  required>
													</div>							    												                
								    			<div class="input-group">
								    				<span  class="input-group-addon">Password again</span>
								    				<input type="password"  id="userPassword" name= "userPassword" class="form-control"  required>
							  					</div>
							  					<div class="input-group">			                	
												 	<p>Tip korisnika(Administrator/moderator):</p>  
													<select class="select.input-group-lg" size="1" name="tip">
														<option value="subscriber">Subscriber</option>
														<option value="administrator">Administrator</option>
													</select> 
												</div>
								                <button id="submit" type="submit" class="btn-success" style="width:90px">Submit</button>

					                </c:if>
						</form>
	    
	    
	    	</div>
	    	
	    	
	    		    	

	</div>
	 
	 
	 
	 
	 
	 
	 
<%-- 	<div id="listaKorisnika">
		<table id="listaTable">
			<c:set var="count" value="0" scope="page"/>	
					<tr>		
						<td></td>
						<td style="color: teal">First Name</td>
						<td style="color: teal">Last Name</td>
						
						<td style="color: teal">Type</td>
						<td style="color: teal">Category (Subscriber)</td>
						
					</tr>
					<c:forEach items = "${users}" var = "user">
					<tr>
						<c:set var="count" value="${count + 1}" scope="page"/>
						<td><c:out value="${count}" />.</td>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						
						<td>${user.type}</td>
						<td>${user.category.name}</td>
						
						<td><a href="./DeleteControllerKorisnik?korisnikId=${user.id}">Ukloni</a></td>
					</tr>
				</c:forEach>
		</table>
	</div>
	--%>
	
	
</body>
</html>