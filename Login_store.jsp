<%@page import="com.mysql.cj.protocol.Resultset"%>
<html>
    <head>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%
        Resultset rs=null;
        try{
           
             Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/to_let_db", "root", "Padhi@0123");
            out.println("database connected<br>");
            Statement stmt =con.createStatement();
        
            String Name=request.getParameter("name");
            String DOB=request.getParameter("Dob"); out.println("is inserted<br>");
            String Address=request.getParameter("Address");
            String Country=request.getParameter("country");
            String State=request.getParameter("state");
            String District=request.getParameter("district");
            int Zip_Code=Integer.parseInt(request.getParameter("Zip_code"));
            String User_Name=request.getParameter("Username");
            String Email=request.getParameter("Email");
            String Phone_Number=  request.getParameter("Phone");
            String Password=request.getParameter("Password");
            String Confirm_Password=request.getParameter("Confirmpassword");
            //String Uploaded_id=request.getParameter("File");
           
            String Dream_place=request.getParameter("Favoriteplace");
            String Role_type ="USER";
            String Action ="Delete";
            
            // String insert="INSERT INTO user_db (`First_name`, `Last_name`, `DOB`, `Address`, `Country`, `State`, `District`, `Zip_Code`, `User_Name`, `Email`, `Phone_Number`, `Password`, `Confirm_Password`, `Dream_place` ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
String insert="INSERT INTO user_db (`Name`, `DOB`, `Address`, `Country`, `State`, `District`, `Zip_Code`, `User_Name`, `Email`, `Phone_Number`, `Password`, `Confirm_Password`, `Dream_place`, `Role_type`, `Action`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

             PreparedStatement ps = con.prepareStatement(insert);
             ps.setString(1,Name);
             ps.setString(2,DOB);
             ps.setString(3,Address);
             ps.setString(4,Country);             
             ps.setString(5,State);
             ps.setString(6,District);             
             ps.setInt(7, Zip_Code);
             ps.setString(8,User_Name);
             ps.setString(9,Email);
             ps.setString(10,Phone_Number);
             ps.setString(11,Password);
             ps.setString(12,Confirm_Password);             
             ps.setString(13,Dream_place);
             ps.setString(14,Role_type);
             ps.setString(15,Action);
            
            ps.execute();

            		 ps.close();
            		 con.close();
            		 response.sendRedirect("Login_user.html");
            out.println("Record insert sucessfully"+DOB);
        }
        catch(Exception e){
            System.out.println("EXCEPTION FOUND"+e);
            e.printStackTrace();
        }
        %>
    </body>
</html>