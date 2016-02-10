<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="./izmenaLicnihPodataka.css" rel="stylesheet" type="text/css" />
	<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
	<link href="./listCategory.css" rel="stylesheet" type="text/css" />
	<link href="./bootstrap.css" rel="stylesheet" type="text/css" /><title>All categories</title>
	
	<title>Change password</title>
	
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
			
			
			
			<!-- 			 	<a href="./ReadControllerEbooks" class="dugme" >Ebooks</a> 
								<a href="./ReadControllerModeli" class="dugme" >Category</a>		
								<a href="./PrepereUpdateControllerKorisnik" class="dugme">Change data</a>
								<a href="./PrepareUpdateKorisnikLozinka" class="dugme">Change Password</a> -->
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
    
    
    <div class="jumbotron">
	      <div class="container">
	       <!--  <h1>List of ebooks</h1>
	        	<p >Find what you like or choose category you like</p>
	        	<div id="filtriranje"> -->
	        	<div class="page-header">
			        <h1>Change your password</h1>
			        <p class="lead">Here you can change your password.You have to enter your old password and then 2 times new password</p>
			      
			    </div>
					
    
    	
	    	<form action="./UpdateUserPassword" method="post" accept-charset="ISO-8859-1">
					        		<c:if test="${sessionScope.admin !=null}">
					        		
					                	<div class="input-group">
						    				<span class="input-group-addon">Old Password</span>
						    				<input type="password" class="form-control"  name="userPasswordOld">
					  					</div>
					  					<div class="input-group">
						    				<span  class="input-group-addon">New Password</span>
						    				<input type="password"   name= "userPasswordNew"  class="form-control" >
					  					</div>
					  					<div class="input-group">
						    				<span class="input-group-addon">New Password again</span>
						    				<input type="password" class="form-control" name="userPasswordNew2">
					  					</div>
					  					<p>**After you change your password you have to log out and log in again to see changed passwod. </p>
					  
									            <button id="submit" type="submit" class="btn-success" style="width:90px">Submit</button>
											    <input type="hidden" name="userID" value="${sessionScope.admin.userID}">
												<input type="hidden" name="tLozinka" value="${sessionScope.admin.userPassword}">
											                	
					                	
					                	
					                </c:if>
			</form>
	    
	    	</div>
	    
    
    
	</div>

</body>
</html>