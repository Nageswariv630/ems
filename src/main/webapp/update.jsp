<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style>
     form{
         display:flex;
         flex-direction:column;
         margin:auto;
         width:20%;
     }
</style>
</head>
<body>
     <%
     Connection con=null;
     PreparedStatement ps=null;
     ResultSet rs = null;
         try{
        	 Class.forName("com.mysql.cj.jdbc.Driver");
        	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
        	 ps=con.prepareStatement("select*from emp where id=?");
        	 String sid=request.getParameter("id");
        	 int id=Integer.parseInt(sid);
        	 ps.setInt(1,id);
        	 rs=ps.executeQuery();
        	 rs.next();  
         }
         catch(Exception e){
        	 e.printStackTrace();
         }
             
       %>
<h2><%=session.getAttribute("name") %></h2>
     <h1>Update Page</h1>
     <form action="update" method="post">
          <input type="text" value="<%=rs.getInt(1) %>" name="id" placeholder="Enter id">
          <input type="text" value="<%=rs.getString(2) %>" name="name" placeholder="Enter Name">
          <input type="text" value="<%= rs.getString(3) %>" name="email" placeholder="Enter Email">
          <input type="text" value="<%= rs.getDouble(4) %>" name="salary" placeholder="Enter Salary">
          <input type="text" value="<%= rs.getInt(5) %>" name="deptno" placeholder="Enter Dept No">
          <input type="text" value="<%= rs.getString(6) %>"  name="password" placeholder="Enter Password">
          <button type="submit">Update</button>
     
     </form>
</body>
</html>