<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Customer Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="components/jquery-3.6.0.js"></script>
<script src="components/main.js"></script>



 <nav class="navbar navbar-expand-md navbar-dark" style="background-color:#ff80b3">
                   

                    <ul class="navbar-nav">
                        <li><a href="Index.jsp" class="nav-link" style="color:#000000" >ElectroGrid (EG)</a></li>
                    </ul>
                 </nav>
               


</head>
<body>




<br>
<br>


<div class="container"> 
		<div class="row">  
		 <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                       

                        <caption>
                            <h2>
                              CUSTOMER PROFILE
                            </h2>
                        </caption>
		
			
				<form id="formCustomer" name="formCustomer" method="post" action="Customer.jsp">  
					Customer Name:  
					<input id="customerName" name="customerName" type="text" class="form-control form-control-sm">  
					
					<br> 
					Customer Email:  
					<input id="customerEmail" name="customerEmail" type="text" class="form-control form-control-sm">  
					
					<br>
					 Customer Type: 
					
					 <select id="customerType" name="customerType" class="form-control form-control-sm">
					 <option>Commercial</option>
					 <option>Individual</option>
					 <option>Other</option>
					 </select>
					 
					 <br> 
					 Customer Contact:  
					 <input id="customerContact" name="customerContact" type="text" class="form-control form-control-sm">  
					 
					
					 
					 
					 <br>  
					 <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-success" style="background-color:#e6005c"   >  
					 <input type="hidden" id="hidcustomerIDSave" name="hidcustomerIDSave" value=""> 
					 
					 
				</form> 
				  </div>
                </div>
            </div>
    
				<div id="alertSuccess" class="alert alert-success"></div>  
				<div id="alertError" class="alert alert-danger"></div> 
				
				<br>
					
				
            <div class="row">
               

                <div class="container">
                    <h3 class="text-center">Customer Details</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="Index.jsp" class="btn btn-success"style="background-color: #e6005c" ">Go To Home page</a>
                        
                    </div>
                    <br>
                
                   <div id="divItemsGrid">   
					<%    
						Customer customerObj = new Customer();
						out.print(customerObj.readCustomer());   
					%>  
				
					<br> 
				</div> 
                   
                </div>
            </div>
				  
 			</div>
 		 
 		</div>    
 		
<br>
	 

</body>


</html>