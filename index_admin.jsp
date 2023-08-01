<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>



  <meta charset="UTF-8">
  <title>Login Page</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">


<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="index_Style.css">

</head>
<body>
  <% 
  String the_name=(String)session.getAttribute("name2");
  %>




	<!-- Navbar -->
<div>
    <header>
        <div class="nav container">
            <!-- Logo -->
            <a href="index.html" class="logo"><i class='bx bx-home'></i>Home </a>

            <!-- Nav List -->
            <ul class="navbar">
                <li><a href="index_user.jsp">Home</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#sales">Sales</a></li>
                <li><a href="#properties">Properties</a></li>
                 <li><a href="#properties">Welcome Admin: <%=the_name %> </a></li>
            </ul>
            <!-- Log In Button -->
            <a href="Login_admin.html" class="btn">Log Out</a>
        </div>

    </header>
</div>
<!-- Home -->
    <section class="home container" id="home">
        <div class="home-text">
            <h1>Find Your Next <br>Perfect Place To <br>Live.</h1>
            <a href="Register_admin.html" class="btn">Sign Up</a>
        </div>
    </section>
    <!-- About -->
    <section class="about container" id="about">
        <div class="about-img">
            <img src="img/about.jpg" alt="">
        </div>
        <div class="about-text">
            <span>About Us</span>
            <h2>We Provide The Best <br>Property For You !</h2>
            <p>The Way You Think your compfort we think your budget which is Pocket friendly and offerdable price in your locality!</p>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iusto debitis ducimus neque assumenda facere magni!</p>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem, soluta.</p>
            <a href="#" class="btn">Learn More</a>
        </div>
    </section>
    <!-- Sales -->
    <section class="sales container" id="sales">
        <!-- Box 1 -->
        <div class="box">
           
            <h3>See the Register user details</h3>
            <p><a href="Table_user.jsp">Click here!!</a></p>
        </div>
        <!-- Box 2 -->
        <div class="box">
            <i class='bx bx-desktop' ></i>
            <h3>Start Your Membership</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facilis, aut.</p>
        </div>
        <!-- Box 1 -->
        <div class="box">
           
            <h3>See the Register Admin details..</h3>
            <p><a href="Table_admin.jsp">Click here!!</a></p>
        </div>
    </section>
    <!-- Properties -->
    <section class="properties container" id="properties">
        <div class="heading">
            <span>Recent</span>
            <h2>Our Featured Properties</h2>
            <p>Lorem ipsum dolor sit amet consectetur <br> adipisicing elit. Odio, laborum!</p>
        </div>
        <div class="properties-container container">
            <!-- Box 1 -->
            <div class="box">
               <a href="Add_hotel.html"> <img src="img/p1.jpg" alt=""></a>
                <h3>To Add Your Hotel for rent</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Add_hotel.html">Click here</a></h3>
                        
                    </div>
                   
                </div>
            </div>
            <!-- Box 2 -->
            <div class="box">
                <a href="Add_house.html"><img src="img/p2.jpg" alt=""></a>
                <h3>To Add Your House for rent</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Add_house.html">Click here</a></h3>
                        
                    </div>
                    
                </div>
            </div>
            <!-- Box 3 -->
            <div class="box">
                <a href="Add_property.html"><img src="img/p3.jpg" alt=""></a>
                <h3>To Add Your property for sale</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Add_property.html">Click here</a></h3>
                        
                    </div>
                    
                </div>
            </div>
            <!-- Box 4 -->
            <div class="box">
                <a href="Buy_house.jsp"><img src="img/p4.jpg" alt=""></a>
                <h3>Book Your favorite Hotel</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Buy_hotel.jsp">Click here</a></h3>
                       
                    </div>
                    
                </div>
            </div>
            <!-- Box 5 -->
            <div class="box">
               <a href="Buy_house.jsp"> <img src="img/p5.jpg" alt=""></a>
                <h3> House rent in your budget</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Buy_house.jsp">Click here</a></h3>
                       
                    </div>
                   
                </div>
            </div>
            <!-- Box 6 -->
            <div class="box">
                <a href="Buy_property.jsp"><img src="img/p6.jpg" alt=""></a>
                <h3>Buy Property in you budget</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Buy_property.jsp">Click here</a></h3>
                        
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Newsletter -->
    <section class="newsletter container">
        <h2>Have Question in mind? <br>Let us help you</h2>
        <form action="">
            <input type="email" name="" id="email-box" placeholder="yourmail@gmail.com" required>
            <input type="submit" value="Send" class="btn">
        </form>
    </section>
 <!-- Footer -->
 <section class="footer">
	<div class="footer-container container">
		<h2>To-let Solution...</h2>
		<div class="footer-box">
			<h3>Quick Links</h3>
			<a href="#">Agency</a>
			<a href="#">Building</a>
			<a href="#">Rates</a>
			
		</div>
		<div class="footer-box">
			<h3>Locations</h3>
			<a href="#">India</a>
			<a href="#">USA</a>
			<a href="#">New York</a>
			
		</div>
		<div class="footer-box">
			<h3>Contact</h3>
			<a href="#">7064372828</a>
			<a href="#">7008308046</a>
			<a href="#">sadasibpadhy012@gmail.com</a>
			<a href="#">shardatripathy123@gmail.com</a>
			<div class="social">
				<a href="#"><i class='bx bxl-facebook' ></i></a>
				<a href="#"><i class='bx bxl-twitter' ></i></a>
				<a href="#"><i class='bx bxl-instagram' ></i></a>
			</div>
		</div>
	</div>
</section>
<!-- Copyright -->
<div class="copyright">
	<p>&#169; This Is Created By Mr.Sadasib Padhy & Mrs. Sarada Devi Tripathy</p>
</div>
</body>
</html>
