<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="users" type="java.util.List" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
	<link href="./bootstrap.css" rel="stylesheet" type="text/css" />

		
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
				<c:if test="${sessionScope.administrator == null && sessionScope.subscriber == null }"> 
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
			        <h1>Users list</h1>
			        <p class="lead">Here you can see list of all users.You can also add new user or edit/delete existing user.</p>
			      
			    </div>
					
    
    	

	    
					    <table >
									
									
									<tr>	
									
										  <div class="row">
									        <div id="rowTitle"  class="col-md-2">First name</div>
									        <div id="rowTitle"  class="col-md-2">Last name</div>
									        <div id="rowTitle"  class="col-md-2">Username</div>
									        <div id="rowTitle"  class="col-md-2">Type</div>
									        
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
														<div id="rowBook" class="col-md-2">${user.username}</div>
														<div id="rowBook" class="col-md-2">${user.type}</div>
														
														<c:if test="${user.category.name== null }">
															<c:if test="${user.type == 'administrator' }">
																		<div id="rowBook" class="col-md-2">Administrator</div>	
															</c:if>
															<c:if test="${user.type == 'subscriber' }">
																		<div id="rowBook" class="col-md-2">All category</div>	
															</c:if>
														</c:if>
														<c:if test="${user.category.name!= null }">
															<div id="rowBook" class="col-md-2">${user.category.name}</div>
														</c:if>
				  										<c:if test="${sessionScope.admin!=null}">
				  												<div id="rowBook" class="col-md-2">
				  													<a class="btnAR" href="./PrepareUpdateUser2?userID=${user.userID }">Edit</a>
				  													<a class="btnAR" href="./DeleteControllerKorisnik?userID=${user.userID}">Remove</a>
				  													
				  												</div>
														</c:if>								
				       						 </div>
										</tr>
										
										</c:forEach>	
									
									
								</table>
				
				
							
<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#newCategory">Create new User</button>

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
				<h2>Add new User</h2>				
	    		<form action="./CreateControllerKorisnik" method="post" accept-charset="ISO-8859-1" onsubmit="return checkForm(this);">
					        		<c:if test="${sessionScope.admin !=null}">
					        		
								                	<div class="input-group">
									    				<span class="input-group-addon">First Name</span>
									    				<input type="text" class="form-control"  name="fName" required>
							  						</div>
							  						<div class="input-group">
							  					
									    				<span  class="input-group-addon">Last Name</span>
									    				<input type="text"   name= "lName"  class="form-control" required>
								    				</div>
								    												                <div class="input-group">
								    				
									    				<span class="input-group-addon">Username</span>
									    				<input type="text" class="form-control"  name="username">
									    			</div>
									                <div class="input-group">
								    				
									    				<span  class="input-group-addon">Password</span>
									    				<input type="password"   name= "userPassword" class="form-control"  required>
													</div>							    												                
								    			<div class="input-group">
								    				<span  class="input-group-addon">Password again</span>
								    				<input type="password"   name= "userPassword2" class="form-control"  required>
							  					</div>
							  					
							  					<div class="input-group" id="tipDiv">			                	
												 	<p>Tip korisnika:</p>  
													
												<!-- 	<input type="radio" name="administrator" id="admin" value="Administrator" />Administrator
													<input type="radio" name="subscriber" id="sub" value="Subscriber" />Subscriber <br> 
													 -->
													 
													 <select class="form-control" id="sel1" name="type">
												     	<option id="admin" value="administrator">Administrator</option>
														<option id="sub" value="subscriber">Subscriber</option>
												        
												      </select>
																			
												
													
													<script>
													
													function check(){
														var e = document.getElementById("sel1");
														var strUser = e.options[e.selectedIndex].value;
														if(strUser == 'subscriber'){
															var i, theContainer, theSelect, theOptions, numOptions, anOption;
															  theOptions = ['All','Fantasy','Sci-fi','Romantic','Comic','Mystery'];

															  // Create the container <div>
															  theContainer = document.createElement('div');
															  theContainer.id = 'subDiv';

															  // Create the <select>
															  theSelect = document.createElement('select');

															  // Give the <select> some attributes
															  theSelect.name = 'category';
															  theSelect.id = 'sel2';
															  theSelect.className = 'form-control';

														

															  // Add some <option>s
															  numOptions = theOptions.length;
															  for (i = 0; i < numOptions; i++) {
															      anOption = document.createElement('option');
															      anOption.value = theOptions[i];
															      anOption.name= i;
															      anOption.innerHTML = theOptions[i];
															      theSelect.appendChild(anOption);
															  }
															  document.getElementById('tipDiv').appendChild(theContainer);

															  // Add the <div> to the DOM, then add the <select> to the <div>
															  theContainer.appendChild(theSelect);
															  document.getElementById('setUser').style.visibility='hidden';
															  document.getElementById('admin').style.visibility='hidden';
															
														}
													}
													
/* 														 function check() {
															
															if(document.getElementById('sub').) {
																  //Male radio button is checked
																  alert("CAOOOO");
																  var i, theContainer, theSelect, theOptions, numOptions, anOption;
																  theOptions = ['All','Fantasy','Sci-fi','Strip'];

																  // Create the container <div>
																  theContainer = document.createElement('div');
																  theContainer.id = 'subDiv';

																  // Create the <select>
																  theSelect = document.createElement('select');

																  // Give the <select> some attributes
																  theSelect.name = 'category';
																  theSelect.id = 'subSel';
																  theSelect.className = 'class_of_select';

															

																  // Add some <option>s
																  numOptions = theOptions.length;
																  for (i = 0; i < numOptions; i++) {
																      anOption = document.createElement('option');
																      anOption.value = i;
																      anOption.innerHTML = theOptions[i];
																      theSelect.appendChild(anOption);
																  }
																  document.getElementById('tipDiv').appendChild(theContainer);

																  // Add the <div> to the DOM, then add the <select> to the <div>
																  theContainer.appendChild(theSelect);
																  document.getElementById('setUser').style.visibility='hidden';
																  document.getElementById('admin').style.visibility='hidden';
																  
																}
															else if(document.getElementById('sub').checked == false && document.getElementById('admin').checked == false ){
																alert("You have to set type of user.");
															}
															}
														
 */													</script>
 
 
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
													
												</div>
												
												<span onClick="check();" class="setType" style="cursor: pointer;" id="setUser">Set type of User</span>
												<h5>If you choose Subscriber you <span class="crveno">MUST</span> click on the <q>Set type of User</q>button to choose from categories.</h5>
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