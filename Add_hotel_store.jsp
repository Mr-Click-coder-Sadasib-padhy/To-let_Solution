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
           
            String City=request.getParameter("City");
            String Adress=request.getParameter("Address");
            String Room_Type=  request.getParameter("roomtype");
            String Contact=request.getParameter("Contact");
            String Price=request.getParameter("Price");
            //String Uploaded_id=request.getParameter("File");
          // String Status="Book";
          
            
            // String insert="INSERT INTO user_db (`First_name`, `Last_name`, `DOB`, `Address`, `Country`, `State`, `District`, `Zip_Code`, `User_Name`, `Email`, `Phone_Number`, `Password`, `Confirm_Password`, `Dream_place` ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
String insert="INSERT INTO store_hotel_db (`Name`,`City`, `Adress`, `Room_Type`, `Contact`, `Price`) VALUES (?,?,?,?,?,?)";
             PreparedStatement ps = con.prepareStatement(insert);
             ps.setString(1,Name);
             ps.setString(2,City);
             ps.setString(3,Adress);
             ps.setString(4,Room_Type);
             ps.setString(5,Contact);
             ps.setString(6,Price);             
             //ps.setString(7,Status);
            
            
            ps.execute();

            		 ps.close();
            		 con.close();
            		 response.sendRedirect("index_user.jsp");
            
        }
        catch(Exception e){
            System.out.println("EXCEPTION FOUND"+e);
            e.printStackTrace();
        }
        %>
    </body>
</html>