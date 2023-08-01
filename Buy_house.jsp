<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jakarta.servlet.jsp.tagext.TryCatchFinally"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
			<title>Buy house</title>
			<link rel="stylesheet" href="index_Style.css">
			<style>
			table{
			width:90%;
			border: 1px solid;
			height: 100px;
			}
			th{
			
			background-color:  #3492fd;
  			color: white;
			}
			th, td {
			text-align: center;
 			 border-bottom: 1px solid #ddd;
			}
			tr:hover {background-color: #3492fd;}
			tr:nth-child(even) {background-color: #868585;}
			
			.table_data{
			align-content: center;
			max-width: 2068px;
			
			margin-left: 130px;
			margin-right:auto;
			background-color: rgb(251, 255, 251);
		  	font-family: sans-serif;
		  	color: rgb(14, 11, 13);
		 	margin-top: -6em;
		  	
		  	overflow-x: hidden;
			}
			</style>
	</head>
<body>
<!-- Navbar -->
    <header>
        <div class="nav container">
            <!-- Logo -->
            <a href="index.html" class="logo"><i class='bx bx-home'></i>home </a>
            <!-- Menu Icon -->
            <input type="checkbox" name="" id="menu">
            <label for="menu" ><i class='bx bx-menu' id="menu-icon"></i></label>
            <!-- Nav List -->
            <ul class="navbar">
                <li><a href="index.html">Home</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#sales">Sales</a></li>
                <li><a href="#properties">Properties</a></li>
            </ul>
            <!-- Dropdown start -->
				
            <!-- Dropdown end -->
            
            <!-- Log In Button -->
            <div class="Logintype">
            <a href="Login_user.html" class="btn">Log out</a>
           <!-- <div class="usertype">
            <a href="Login.html">Admin</a>
            <a href="Login.html">User</a>
            </div>
            </div>*/-->
            
        </div>
    </header>
    <!-- Navbar Ends-->
	<div class="table_data">
	
	<table border="1" >
	<tr>
	<th>Sl_no.</th>
	<th>Name</th>
	<th>City</th>
	<th>Adress</th>
	<th>Room_Type</th>
	<th>Contact</th>
	<th>Price</th>
	</tr>
	
	
	<% try{
		
		String sql ="select * from store_house_db";
		Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = null;
			ResultSet resultSet = null;  
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/to_let_db", "root", "Padhi@0123");
		    Statement stmt = connection.createStatement();

			resultSet = stmt.executeQuery(sql);
			
			
			  while(resultSet.next()){
				  
	%>	
	<br>
         <tr>
		          <td><%=resultSet.getInt("Sl_no.") %></td>
		          <td><%=resultSet.getString("Name") %></td>
		          <td><%=resultSet.getString("City") %></td>
		          <td><%=resultSet.getString("Adress") %></td>
		          <td><%= resultSet.getString("Room_Type") %></td>
		          <td><%=resultSet.getString("Contact") %></td>
		          <td><%= resultSet.getInt("Price") %></td>
         </tr>
		         
<% 
		       }
	}catch(Exception e){
		e.printStackTrace();
	}

	%>	
	
	 </table>
	</div>
	<!-- Footer -->
    <section class="footer">
        <div class="footer-container container">
            <h2>To-let Solution</h2>
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
                <a href="#">sadasibpadhy012@gmail.com</a>
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
        <p>&#169; This Is Created By Mr.Sadasib Padhy</p>
    </div>
	
</body>
</html>