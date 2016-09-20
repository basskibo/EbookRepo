<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="ebooks" type="java.util.List" scope="request"></jsp:useBean>
<jsp:useBean id="category" type="java.util.List" scope="request"></jsp:useBean>
<jsp:useBean id="languages" type="java.util.List" scope="request"></jsp:useBean>

<fmt:setBundle basename="messages.messages"/>

<html>
	<head>
		<title>E-Books</title>
		<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
		<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
		<link href="./listCategory.css" rel="stylesheet" type="text/css" />
		<link href="./bootstrap.css" rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			
		
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
								            <li ><a href="./index.jsp">Home</a></li>
								            <li class="active"><a  href="./ReadControllerEbooks">E-books</a></li>
								            <li class="dropdown">
								              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Category <span class="caret"></span></a>
								              <ul class="dropdown-menu">
								                <li><a href="./PrepareReadControllerCategory">See all</a></li> 
								                <li role="separator" class="divider"></li>
								                <li class="dropdown-header">See more</li>
								            	<c:forEach items="${category}" var="cat">
								            		<li><a href="./FindCategoryBooks?category_id=${cat.categoryID }">${cat.name}</a></li>
												</c:forEach>

												
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
			<c:if test="${sessionScope.subscriber==true}">
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
				<c:if test="${sessionScope.administrator == null && sessionScope.subscriber == null }"> 
						<a class="dugme" href="./login.jsp">Sign in</a>
				
				</c:if>
				<c:if test="${sessionScope.administrator==true || sessionScope.subscriber ==true}">
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
				
				
				<c:if test="${sessionScope.administrator == true}">
					<!-- Trigger the modal with a button -->
					<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#newUser">Create new Book</button>
			    </c:if>
			    </form>

			    
			
					
										
				<table >
					
					
					<tr>	
					
						  <div class="row">
						  	<c:if test="${sessionScope.admin == null}">
						  		<div id="rowTitle" 	class="col-md-2">Number</div>
						  	</c:if>
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
							   			<c:if test="${sessionScope.admin ==null}">
							 
								 			<c:set var="i" value="${i+1}"/>
											<div id="rowBook" class="col-md-2">
												<c:out value="${i}"/>.
											</div>
										</c:if>
         								<div id="rowBook" class="col-md-2">${ebook.title}</div>
										<div id="rowBook" class="col-md-2">${ebook.author}</div>
										<div id="rowBook" class="col-md-2">${ebook.year}</div>
										<div id="rowBook" class="col-md-2">${ebook.language.name}</div>
										<div id="rowBook" class="col-md-2">${ebook.category.name}</div>
  										<c:if test="${sessionScope.admin!=null}">
  												<div id="rowBook" class="col-md-2">
  													<a class="btnAR" href="./PrepareUpdateEbook?ebook_id=${ebook.id }">Edit</a>
  													<a class="btnAR" href="./DeleteControllerEbook?ebook_id=${ebook.id }">Delete</a>
  													
  												</div>
										</c:if>								
       						 </div>
					</tr>
					</c:forEach>
					
					<br/>
					<br/>	
	         		<c:if test="${sessionScope.administrator == null && sessionScope.subscriber== null}">	
					<c:forEach var="item" items="${ ebooks }">
							  <div class="col-md-4">
							    <div class="thumbnail">
 							      <div data-toggle="collapse" data-target="#demo${item.id } class="caption">
							        		<h2>${item.title }</h2>
							          		<h4>${ item.year }</h4>
  
							      	</div>
									
									<button class="btn btn-default" data-toggle="collapse" data-target="#demo${item.id }">More details</button>
									
							    	<a href="#" class="btn btn-default" role="button">Download</a></p>
							        <!-- DODATI DA SAMO SUBSCRIBER TE VRSTE MOZE DA DOWNLOADUJE -->
							      <div id="demo${item.id }" class="collapse">
												<p class="info">Author: ${item.author }</p>
												<p class="info">Year: ${item.year }</p>
												<p class="info">Language: ${item.language.name }</p>
												<p class="info">Category: ${item.category.name}</p>
									</div>
							    </div>
							  </div>
				      </c:forEach>
				      </c:if>				
						
				</table>	
				
											

<!-- Modal -->
<div id="newUser" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Create Ebook</h4>
      </div>
      <div class="modal-body">
			<c:if test="${sessionScope.admin!=null}">
				<h2>Add new book</h2>				
	    		<form action="./CreateControllerEbook" method="post" accept-charset="ISO-8859-1" >
<!-- 	    									onsubmit="return checkForm(this);"
 -->					        		<c:if test="${sessionScope.admin !=null}">
					        		
								                	<div class="input-group">
									    				<span class="input-group-addon">Title</span>
									    				<input type="text" class="form-control"  name="title" required>
							  						</div>
							  						<div class="input-group">
							  					
									    				<span  class="input-group-addon">Author</span>
									    				<input type="text"   name= "author"  class="form-control" required>
								    				</div>
								    				 <div class="input-group">
								    				
									    				<span class="input-group-addon">Filename</span>
									    				<input type="file" class="form-control"  name="filename">
									    			</div>
									               						    												                
								    			<div class="input-group">
								    				<span  class="input-group-addon">Year</span>
								    				<input type="number"   name= "year" class="form-control"  required>
							  					</div>
							  					
							  					<div class="input-group" id="4">			                	
												 	<p>Mime Type:</p>  	 
												<select  size="1" style="height:35px;width:100%;" name="mimeSelect" >
														<option value="pdf">PDF</option>
												
														
													
												</select>						
												</div>
							  					
							  					<div class="input-group" id="l">			                	
												 	<p>Language:</p>  	 
												<select  size="1" style="height:35px;width:100%;" name="langSelect" >
													<c:forEach items="${languages}" var="lang">
														<option value="${lang.languageID}">${lang.name}</option>
													</c:forEach>
												</select>						
												</div>
												
							  					<div class="input-group" id=",">			                	
												 	<p>Category:</p>  	 
												<select  size="1" style="height:35px;width:100%;" name="categorySelect" >
													<c:forEach items="${category}" var="cat">
														<option value="${cat.categoryID}">${cat.name}</option>
													</c:forEach>
												</select>						
												</div>
		
										 <script type="text/javascript">
										
											  function checkForm(form)
											  {
											    if(form.username.value == "") {
											      alert("Error: Username cannot be blank!");
											      form.username.focus();
											      return false;
											    }
											    re = /^\w+$/;
											    if(!re.test(form.username.value)) {
											      alert("Error: Username must contain only letters, numbers and underscores!");
											      form.username.focus();
											      return false;
											    }
											
											    if(form.userPassword.value != "" && form.userPassword.value == form.userPassword2.value) {
											      if(form.pwd1.value.length < 6) {
											        alert("Error: Password must contain at least six characters!");
											        form.userPassword.focus();
											        return false;
											      }
											      if(form.userPassword.value == form.username.value) {
											        alert("Error: Password must be different from Username!");
											        form.userPassword.focus();
											        return false;
											      }
											      re = /[0-9]/;
											      if(!re.test(form.userPassword.value)) {
											        alert("Error: password must contain at least one number (0-9)!");
											        form.pwd1.focus();
											        return false;
											      }
											      re = /[a-z]/;
											      if(!re.test(form.userPassword.value)) {
											        alert("Error: password must contain at least one lowercase letter (a-z)!");
											        form.userPassword.focus();
											        return false;
											      }
											      re = /[A-Z]/;
											      if(!re.test(form.userPassword.value)) {
											        alert("Error: password must contain at least one uppercase letter (A-Z)!");
											        form.userPassword.focus();
											        return false;
											      }
											    } else {
											      alert("Error: Please check that you've entered and confirmed your password!");
											      form.userPassword.focus();
											      return false;
											    }
											
											    alert("You entered a valid password: " + form.userPassword.value);
											    return true;
											  }
										
										</script>
													
												
												
									<div class="modal-footer">
										<button type="button" class="dugme" data-dismiss="modal" style="width:90px; margin-right:10px;">Cancel</button>
										<button class="dugme" id="submit" type="submit" class="btn-success" style="width:90px; float:right;">Submit</button> 
									</div>

					                </c:if>
						</form>
			
			</c:if>
      </div>

    </div>
				
				
								    
	    
	    	</div>

	</div>
	 
   
					
				</div>
				<!-- CONTAINER -->

									
				
				
				
				
				
				
				
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
		
		
	  	<script src="./bootstrap.min.js"></script>
	    <script src="./bootstrap.js"></script>
	    <script src="./jquery.js" type="text/javascript"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	    <script src="./bootstrap.min.js"></script>
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <script src="./ie10-viewport-bug-workaround.js"></script>
		
	</body>
</html>