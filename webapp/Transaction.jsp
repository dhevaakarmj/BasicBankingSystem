<%@page import="java.time.LocalDate"%>
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

		Configuration con = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Customer.class).addAnnotatedClass(Transactions.class);
		SessionFactory factory = con.buildSessionFactory();
		Session s = factory.openSession();
		Transaction tx = s.beginTransaction();

		int accNo = Integer.parseInt(request.getParameter("accNumber"));
		String ifsc = request.getParameter("ifsc");
		String holderName = request.getParameter("holderName");
		int amount = Integer.parseInt(request.getParameter("amount"));
		
		String query = "FROM Customer where accNumber = " + accNo;

		
		java.util.List<Customer> l1 = s.createQuery(query).list();
		
		Transactions transaction = new Transactions();
		
		for(Customer c: l1){
			c.setBalance(c.getBalance() + amount);
			
			transaction.setAccNumber(accNo);
			transaction.setDate(LocalDate.now().toString());
			transaction.setDebit(amount);
			transaction.setName(c.getName());
		}
		
		String query2 = "FROM Customer where accNumber = 1234";
		
		java.util.List<Customer> l2 = s.createQuery(query2).list();
		
		for (Customer current: l2){
			current.setBalance(current.getBalance() - amount);
			transaction.setBalance(current.getBalance());
		}
		
		s.save(transaction);
		
		tx.commit();
		s.close();
		
		out.print("<script>");
        out.print("location='ViewAllTransactions.jsp';");
        out.print("</script>");	
		
	}catch(Exception e){
		out.println(e);
	}
			
			

		%>



</body>

</html>