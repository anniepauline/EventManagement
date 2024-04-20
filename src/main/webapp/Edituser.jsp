<%@page import="model.Registration"  %>
<%@page import="model.User"  %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<!--       tailwind config -->
  <script src="https://cdn.tailwindcss.com"></script>
   <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
	  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            clifford: '#da373d',
          }
        }
      }
    }
  </script>
 
        
</head>
<body>
<%@include file="Navbar.jsp" %>
	
<% if (request.getAttribute("status") != null) {%>
        <div class="alert alert-primary" role="alert">
 			 <%= request.getAttribute("status")%>
		</div>
        <%}%>
        
        
  <% if (session.getAttribute("username") != null) {
	  	Registration r = new Registration(session);
        	User u = r.getInfo();%>
<div class=" items-center mx-auto text-center pt-10 mt-10 mb-10 w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">

    <div class="flex flex-col items-center mx-auto text-center pb-10">
        <img class="w-24 h-24 mb-3 rounded-full shadow-lg" src="https://w7.pngwing.com/pngs/584/113/png-transparent-pink-user-icon.png" alt="Bonnie image"/>
         <form class="signup-form" id="signup" action="register" method="post">
        <input class=" rounded-md mb-1" type="text" id="username" name="username" placeholder="Username"required value="<%=u.getName()%>">
		<br>
        <input class=" rounded-md mb-1" type="text" name="phone" placeholder="Contact" value="<%=u.getEmail() %>">      
        <br>      
        <input class="rounded-md mb-1" name="email"  type="text" placeholder="Email address" value="<%=u.getPhone() %>">
   		 <br>
            <button  type="submit" name="update" class="text-white dark:bg-pink-600 dark:hover:bg-pink-700 dark:focus:ring-primary-800 focus:ring-4  font-medium rounded-lg text-sm px-5 py-2.5 text-center ">Update</button>
            <button type="submit" name="delete" class="  mt-4 py-2 px-4 ms-2 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Delete</button>
        
  </form>
    </div>
</div>

 <%}%>
<%@include file="Footer.jsp" %>
</body>
</html>