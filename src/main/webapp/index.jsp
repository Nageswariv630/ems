<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
<%response.sendRedirect("login.jsp"); %>
   <h1>Welcome to EMS</h1>
   <a href="reg.jsp"><button>Click here to Register</button></a>
   <a href="allemp"><button type= "submit">View All Employees</button></a>
   
   <script type="text/javascript">
       
   let msgele = document.getElementById("msg");
   setTimeout(()=>{
	   msgele.style.display = "none";
   },2000);
   
   </script>
</body>
</html>