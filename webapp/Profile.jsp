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
    <title>Customers</title>
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

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap');

body {
	font-family: 'Poppins', sans-serif;
}

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:wght@300;400;500;700&display=swap')
	;

:root { 
	--primary-color: #f2726a; 
	--white-color: #fff;
}

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.card {
	height: 450px;
	width: 350px;
	border-radius: 15px;
	background-color: #715976;
	text-align: center;
	overflow: hidden;
	margin: auto;
	margin-top: 60px;
}

.card__img {
	height: 150px;
	width: 150px;
	border-radius: 50%;
	background-color: white;
	margin: 0 auto 15px;
	border: 4px solid #89758d;
	overflow: hidden;
	transition: 0.4s;
	transform: translateY(25px);
}

.card__img img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: 70% 0%;
}

.card__img:hover {
	width: 100%;
	height: 100%;
	border: none;
	transform: unset;
	border-radius: unset;
}

.card__name {
	font-weight: 600;
	color: var(--white-color);
	margin-top: 120px;
}

.card__job {
	color: #fed2ff;
}

.card__link {
	margin: 20px;
}

.card__link a {
	color: var(--white-color);
	text-decoration: none;
	font-size: 1.5rem;
	margin: 25px 16px;
}

.card__link i {
	transition: 0.3s;
}

.card__link i:hover {
	color: var(--primary-color);
}

.card__btn-contact {
	margin: 18px;
	background-color: transparent;
	color: var(--white-color);
	padding: 12px 23px;
	border: 1px solid var(--primary-color);
	font-size: 0.9rem;
	border-radius: 10px;
	transition: 0.3s;
	cursor: pointer;
}

.card__btn-contact:hover {
	background-color: var(--primary-color);
}
</style>

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

                <li class="nav-item active">
                    <a class="nav-link" href="Profile.jsp">About Developer</a>
                </li>
            </ul>
        </div>
    </nav>

	

          
          
          <main class="h-full overflow-y-auto">

				<div class="container px-6 mx-auto grid">
					<h2
						class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200">
						Profile</h2>
				</div>

					<body>
						<div class="card">
							<div class="card__img">
								<img src="dhevaakar.jpg" alt="dhevaakar">
							</div>
							<div class="card__name">
								<h2>Dhevaakar</h2>
							</div>
							<div class="card__job">
								<span>Fullstack Developer</span>
							</div>
							<div class="card__btn">
								<button class="card__btn-contact">Logout</button>
							</div>
						</div>
					</body>
			</main>
          
        </tbody>
      </table>
      
      



</body>

</html>