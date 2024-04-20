<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<style>

.error {
	color: rgb(255, 41, 41);
}

#msg {
	color: green;
	text-align: center;
	width: 100%;
	font-weight: bold;
	font-size: 25px;
	padding: 5px;
}
</style>
<title>Reset Password</title>
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
</head>
<body>
	<script>
		jQuery(document)
				.ready(
						function($) {
							$("#resetpass")
									.validate(
											{
												//ignore: [],
												rules : {

													newPassword : {
														required : true,
														minlength : 6,
													},
													cPassword : {
														required : true,
														minlength : 6,
														equalTo : "#newPassword",
													},
												},
												messages : {

													newPassword : {
														required : "Please enter the password.",
														minlength : "Password length must be greater than 6",
													},
													cPassword : {
														required : "Please reenter the password.",
														minlength : "Password length must be greater than 6",
														equalTo : "Mismatch password",
													},
												},
											});
						});
	</script>
	
		
<section class="bg-gray-50 dark:bg-gray-900 xl:pt-1">
<%@include file="Navbar.jsp" %>

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
                 Reset Password
              </h1>
          
	      	<form  action="register" method="post" id="resetpass" class="space-y-4 md:space-y-6">
                <div>
                      <label for="newPassword" class="block mb-2 text-left text-sm font-medium text-gray-900 dark:text-white">New Password</label>
                      <input type="password" placeholder="Enter New Password "id="newPassword" name="newPassword"  class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required="">
                  </div>
                  <div>
                      <label for="cPassword" class="block mb-2 text-left text-sm font-medium text-gray-900 dark:text-white">Confirm Password </label>
                      <input type="pasword"  placeholder="Confirm Password " name="cPassword" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                  </div>
                
               
                  <button type="submit"  name="reset"  class="w-full text-white bg-pink-600 hover:bg-pink-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Reset</button>
                 
              </form>
		   
          </div>
      </div>
  </div>
</section>
	
		<%@include file="Footer.jsp" %>
</body>
</html>