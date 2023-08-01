<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jakarta.servlet.jsp.tagext.TryCatchFinally"%>
<%
try{
	String username=request.getParameter("username");

	String password=request.getParameter("password");
	
	String sql ="select * from user_db where User_Name=? and Password=?";
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection connection = null;
	
	PreparedStatement pstmt=null;
	
	ResultSet resultSet = null;  
	
	String Role= null; 
	String user_name= null;
	String Name=null;
	String firstname=null;

	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/to_let_db", "root", "Padhi@0123");

	pstmt = connection.prepareStatement(sql);
	
	
	pstmt.setString(1,username);
	pstmt.setString(2,password);


	resultSet=pstmt.executeQuery();


	if(resultSet.next()) 
	{
		Name=resultSet.getString("Name");
		  user_name=resultSet.getString("User_Name");  
		  
		  Role = resultSet.getString("Role_type");
	}
	else{
		response.sendRedirect("Error_login.html");
	}

	session.setAttribute("name2",Name);
	out.println("user_type"+Role);

	if(Role.equals("USER"))
		  response.sendRedirect("index_user.jsp");
		else 
			response.sendRedirect("Error_login.jsp");

	
}
catch(Exception e){
	e.printStackTrace();
}

%>