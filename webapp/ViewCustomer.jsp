<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.hibernate.*"%>
<%@ page import="org.hibernate.cfg.*"%>
<%@ page import="java.util.*"%>
<%@ page import="myPojo.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>


</head>
<body style="background-color: #eee;">


    <nav class="navbar navbar-expand-lg navbar-light bg-light" >
        <a class="navbar-brand" href="#">GRIP</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav" style="margin: auto; width: fit-content;">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Customers.jsp">Customers<span class="sr-only">(current)</span></a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Transactions
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="TransferMoney.jsp">Transfer Money</a>
                        <a class="dropdown-item" href="ViewAllTransactions.jsp">View All Transactions</a>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Profile.jsp">About Developer</a>
                </li>
            </ul>
        </div>
    </nav>
<%

	String name = request.getParameter("c_name");
	String email = request.getParameter("c_email");
	String accountNumber = request.getParameter("c_accNumber");
	String contact = request.getParameter("c_contact");
	int balance = Integer.parseInt(request.getParameter("c_balance"));
	String address = request.getParameter("c_address");

%>

    <section >
		
        
        <div class="container py-5">
            
            <div class="col-lg-8" style="width:800px; height:fit-content; margin:auto; margin-top:100px;">
                <h4 style="width: fit-content; margin:auto; margin-bottom: 40px;">Customer Details</h4>
              <div class="card mb-4">
                <div class="card-body">
                
                <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Account Number</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=accountNumber %></p>
                    </div>
                  </div>
                  <hr>
                
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Full Name</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=name %></p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Email</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=email %></p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Phone</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=contact %></p>
                    </div>
                  </div>
                  <hr>
                  
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Address</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=address %></p>
                    </div>
                  </div>
                  
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Balance</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%="₹ " + balance + ".00" %></p>
                    </div>
                  </div>
                  
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

    
</body>
</html>