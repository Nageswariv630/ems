<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>

<style>
      form{
            display:flex;
            flex-direction:column;
            margin:auto;
            width:30%;
      }
</style>

</head>
<body>
<h2><%=session.getAttribute("name") %></h2>
     <h1 style="text-align:center" >Registration Form</h1>
     <form action="register" method="post">
          <input type="text" name="id" placeholder="Enter id">
          <input type="text" name="name" placeholder="Enter Name">
          <input type="text" name="email" placeholder="Enter Email">
          <input type="text" name="salary" placeholder="Enter Salary">
          <input type="number" name="deptno" placeholder="Enter Dept No">
          <input type="text" name="password" placeholder="Enter Password">
          <button type="submit">Register</button>
     
     </form>
</body>
</html>