<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot password</title>
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
		jQuery.validator
				.addMethod(
						"checkemail",
						function(value, element) {
							return (/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
									.test(value) || /^[0-9]{10}$/.test(value));
						});

		jQuery(document).ready(function($) {
			$("#forgot").validate({
				rules : {
					useremail : {
						required : true,
						checkemail : true
					},

				},
				messages : {
					useremail : {
						required : "Please enter the email.",
					}
				}
			});
		});
	</script>
<%@include file="Navbar.jsp" %>
<section class="bg-gray-50 dark:bg-gray-900 xl:pt-1">
  <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
      <a href="#" class="flex items-center mb-6 text-2xl font-semibold text-gray-900 dark:text-white">
          <img class="w-8 h-8 mr-2" src="https://cdn.logojoy.com/wp-content/uploads/2018/08/23143920/9-5.png" alt="logo">
          Eventbite    
      </a>
      <div class="w-full text-center bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
          <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
              <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                  Forgot Password
              </h1>
          
	      	<form action="forgot" method="post" id="forgot"  class="space-y-4 md:space-y-6">
                  <div>
                      <label for="username" class="block mb-2 text-left text-sm font-medium text-gray-900 dark:text-white">Username</label>
                      <input type="text" placeholder="Enter Username "name="username" id="username" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required="">
                  </div>
                  <div>
                      <label for="useremail" class="block mb-2 text-left text-sm font-medium text-gray-900 dark:text-white">Email</label>
                      <input type="email"  placeholder="Enter User Email " name="useremail" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                  </div>
               
                  <button type="submit"  class="w-full text-white bg-pink-600 hover:bg-pink-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Submit</button>
              </form>		    
              <a href="login.jsp" class="mt-6 font-medium text-pink-600 hover:underline dark:text-primary-500">Login here</a>              
          </div>
      </div>
  </div>
</section>
<
</body>
</html>