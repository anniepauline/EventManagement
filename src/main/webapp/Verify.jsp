<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
      </script>
    <script src=
"https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js">
      </script>
    <script src=
"https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js">
      </script>
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
<style type="text/css">
#msg {
	color: red;
	text-align: center;
	width: 100%;
	font-weight: bold;
	font-size: 25px;
	padding: 5px;
	margin-top: 10px;
}
</style>
</head>
<body>
		<%@include file="Navbar.jsp" %>
		
	<section class="bg-gray-50 dark:bg-gray-900 xl:pt-1">
	<%
		if (request.getAttribute("status") != null) {
		%>
		<div id="msg">
			<%=request.getAttribute("status")%></div>
		<%
		}
		%>
  <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
      <a href="#" class="flex items-center mb-6 text-2xl font-semibold text-gray-900 dark:text-white">
          <img class="w-8 h-8 mr-2" src="https://cdn.logojoy.com/wp-content/uploads/2018/08/23143920/9-5.png" alt="logo">
          Eventbite    
      </a>
      <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
          <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
              <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                 Verify
              </h1>
          
	      	<form  action="verify" method="post"  class="space-y-4 md:space-y-6">
                  <div>
                      <label for="usercode" class="block mb-2 text-left text-sm font-medium text-gray-900 dark:text-white">Enter The OTP</label>
                      <input type="text" name="usercode" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                  </div>
                  <button type="submit"  class="w-full text-white bg-pink-600 hover:bg-pink-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Submit</button>
                 
              </form>
		   
          </div>
      </div>
  </div>
</section>
</body>
</html>