<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<jsp:useBean id="user" type="rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
	<link href="./listCategory.css" rel="stylesheet" type="text/css" />
	<link href="./bootstrap.css" rel="stylesheet" type="text/css" />
	<script src="./jquery.js" type="text/javascript"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
	<title>Change your data</title>
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
	         <c:if test="${sessionScope.administrator == null && sessionScope.subscriber== null}">	
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
											                <li><a href="./PrepareUpdateUser">Change data</a></li>
											                <li role="separator" class="divider"></li>
											                <li class="dropdown-header"></li>
											                <li><a href="./PrepareCreateControllerKorisnik">See all users</a></li>
											              </ul>
											            </li>
											          </ul>
						</div><!--/.nav-collapse -->
												
						
								
			</c:if>
			
			<!-- Meni kada je korisnik ulogovan kao MODERATOR -->
			<c:if test="${sessionScope.subscriber==true}">
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
											                <li><a href="./PrepareUpdateUser">Change data</a></li>
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
					    <p id="printName"> ${sessionScope.adminName} </p>        	
				</c:if>
				<c:if test="${sessionScope.administrator == null && sessionScope.subscriber== null }"> 
						<a class="dugme" href="./login.jsp">Sign in</a>
				
				</c:if>
				<c:if test="${sessionScope.administrator==true || sessionScope.subscriber==true}">
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
			        <h1>Change data</h1>
			        <p class="lead">Here you can change data.You can enter new first and last name,also you can change password.</p>
				<%-- 	<c:forEach items = "${user}" var = "u">
					
						<p>u.fName </p>
						<p>u.lName </p>
						<p>u.username </p>
						
					</c:forEach> --%>
				</div>
					
	
	<form action="./UpdateControllerKorisnik" method="post" accept-charset="ISO-8859-1" >
	
					        		
								                	<div class="input-group">
									    				<span class="input-group-addon">First Name</span>
									    				<input type="text" class="form-control"  name="fName" value="${user.firstName}" required>
							  						</div>
							  						<div class="input-group">
							  					
									    				<span  class="input-group-addon">Last Name</span>
									    				<input type="text"   name= "lName"  class="form-control" value="${user.lastName}" required>
								    				</div>
								    				<div class="input-group">
									    				<span class="input-group-addon">Username</span>
									    				<input type="text" class="form-control" name="username" value="${user.username}"  required>
									    			</div>
									                  <input type="hidden" name="userID" value="${user.userID}">
												<input type="hidden" name="tLozinka" value="${user.userPassword}">
											      					    												                
								    			<p>If you want to change your password follow this <a href="./PrepareUpdateKorisnikLozinka "> <span class="crveno">link.</span></a> </p>
							  					<div class="input-group" id="tipDiv">			                	
												 	<p>Tip korisnika je:</p>  
													
												<!-- 	<input type="radio" name="administrator" id="admin" value="Administrator" />Administrator
													<input type="radio" name="subscriber" id="sub" value="Subscriber" />Subscriber <br> 
													 -->
													 
													 
													 <select class="form-control" id="sel1" name="type">
													 <c:if test="${sessionScope.admin.type == 'administrator' }">
													 	<option id="admin" value="administrator">Administrator</option>
													 </c:if>
													 <c:if test="${sessionScope.admin.type == 'subscriber' }">
													 	<option id="sub" value="subscriber">Subscriber</option>
													 </c:if>
												     	
												        
												      </select>
												      
												      
												      <c:if test="${sessionScope.admin.type =='subscriber' }">
														  <select class="form-control" id='sel2' name="cat">
														  	<c:if test="${sessionScope.admin.category.name == 'Fantasy'}">
														  		<option value="fantasy">Fantasy </option>
														  	</c:if>
														  	<c:if test="${sessionScope.admin.category.name == 'Sci-fi'}">
														  		<option value="sci-fi">Sci-fi </option>
														  	</c:if>
														  	<c:if test="${sessionScope.admin.category.name == 'Romantic'}">
														  		<option value="romantic">Romantic </option>
														  	</c:if>
														  	<c:if test="${sessionScope.admin.category.name == 'Comic'}">
														  		<option value="Comic">Comic </option>
														  	</c:if>
														  </select>	
													  </c:if>				
												</div>
												
												<span onClick="check();" class="setType" style="cursor: pointer;" id="setUser">Set type of User</span>
												<h5>If you choose Subscriber you <span class="crveno">MUST</span> click on the <q>Set type of User</q>button to choose from categories.</h5>
												
												<button class="dugme" id="submit" type="submit" class="btn-success" style="width:90px; float:right;">Submit</button>
												
												</form>
												
													
	</div>
	</div>

</body>
</html>