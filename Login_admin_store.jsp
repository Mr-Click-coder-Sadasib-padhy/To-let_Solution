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
           
            String User_Name=request.getParameter("Username");
            String Email=request.getParameter("Email");
            String Contact=  request.getParameter("Phone");
            String Password=request.getParameter("Password");
            String Confirm_Password=request.getParameter("Confirmpassword");
            //String Uploaded_id=request.getParameter("File");
           
          
            String Role_type ="ADMIN";
            
            // String insert="INSERT INTO user_db (`First_name`, `Last_name`, `DOB`, `Address`, `Country`, `State`, `District`, `Zip_Code`, `User_Name`, `Email`, `Phone_Number`, `Password`, `Confirm_Password`, `Dream_place` ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
String insert="INSERT INTO admin_db (`Name`,`User_Name`, `Email`, `Contact`, `Password`, `Confirm_Password`, `Role_type`) VALUES (?,?,?,?,?,?,?)";
             PreparedStatement ps = con.prepareStatement(insert);
             ps.setString(1,Name);
             ps.setString(2,User_Name);
             ps.setString(3,Email);
             ps.setString(4,Contact);
             ps.setString(5,Password);
             ps.setString(6,Confirm_Password);             
             
             ps.setString(7,Role_type);
            
            ps.execute();

            		 ps.close();
            		 con.close();
            		 response.sendRedirect("index_admin.jsp");
            
        }
        catch(Exception e){
            System.out.println("EXCEPTION FOUND"+e);
            e.printStackTrace();
        }
        %>
    </body>
</html>