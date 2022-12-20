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
    <title>TransferMoney</title>
    <!-- CSS only -->
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



    <style>
        

    </style>

</head>

<body>

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
                <li class="nav-item">
                    <a class="nav-link" href="Customers.jsp">Customers<span class="sr-only">(current)</span></a>
                </li>
                
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
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
		
	try {

		Configuration con = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Customer.class);
		SessionFactory factory = con.buildSessionFactory();
		Session s = factory.openSession();
		Transaction tx = s.beginTransaction();

		String query = "FROM Customer where accNumber = 1234";

		java.util.List<Customer> l1 = s.createQuery(query).list();

		for (Customer c : l1) {
	
	%>
    
    
    <section class="gradient-custom">
      
        <div class="container my-5 py-5">
          <div style="width: fit-content; margin: auto; " class="container">
              <h4>Transfer Money</h4>
          </div>
          <div class="row d-flex justify-content-center py-5">
            <div class="col-md-7 col-lg-5 col-xl-4">


              <div class="card" style="border-radius: 15px;">




                
                <div class="card-body p-4" >
                  <form method="get">
                  
                  <div class="d-flex justify-content-between align-items-center mb-3">
                      <div class="form-outline">
                        <label class="form-label" for="typeText">Account Balance</label>
                        <input type="text" readonly id="typeText" class="form-control form-control-lg" 
                          placeholder="<%=c.getBalance()%>" minlength="19" maxlength="19" />
                        
                      </div>
                    </div>
                  
                  
                    <div class="d-flex justify-content-between align-items-center mb-3">
                      <div class="form-outline">
                        <label class="form-label" for="accNumber">To Account Number</label>
                        <input type="number" min="0" name="accNumber" id="accNumber" class="form-control form-control-lg"
                          placeholder="1234 5678 9012 3457" minlength="19" maxlength="19" />
                        
                      </div>
                    </div>
      
                    <div class="d-flex justify-content-between align-items-center mb-4">
                      <div class="form-outline">
                        <label class="form-label" for="ifsc">IFSC Code</label>
                        <input type="text" id="ifsc" name="ifsc" class="form-control form-control-lg" 
                          placeholder="IFSC Code" />
                      </div>
                    </div>
                    
                    <div class="d-flex justify-content-between align-items-center mb-4">
                      <div class="form-outline">
                        <label class="form-label" for="amount">Amount</label>
                        <input type="number" id="amount" min="0" name="amount" class="form-control form-control-lg"
                          placeholder="Amount" />
                      </div>
                    </div>
                    
                    
                    
                    <div class="d-flex justify-content-between align-items-center mb-4">
                      <div class="form-outline">
                        <label class="form-label" for="holderName">Account Holder Name</label>
                        <input type="text" name="holderName" id="holderName" class="form-control form-control-lg"
                          placeholder="Account Holder Name" />
                      </div>
                    </div>
      
                    
                    <input value="Transfer" type="submit" formaction="Transaction.jsp" style="height: fit-content; width: fit-content; font-size: 16px; margin-left: 105px; margin-top: 5px;" type="button" class="btn btn-info btn-lg btn-rounded">
                    
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

<%
									}
									tx.commit();
									s.close();
									} catch (Exception e) {
									out.println(e);
									}

			
			

		%>



</body>

</html>