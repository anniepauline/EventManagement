<%@page import="model.Registration"  %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.EventProduct"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Events</title>
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
<%@include file="Navbar.jsp" %>

		


<div class="flex flex-row w-full bg-white border border-gray-200  mt-20 mb-20 shadow dark:bg-pink-400 dark:bg-pink-700 p-6">
  <%				Registration r = new Registration(session);
                    ArrayList<EventProduct> al = r.get_eventinfo(request.getParameter("event_category"));
                    System.out.println(al);
                    Iterator<EventProduct> it = al.iterator();
                    while (it.hasNext()) {
                    EventProduct s = it.next(); System.out.println(s.getP_name());%>
    				<a href="#">
        				<img class="rounded-t-lg w-100 h-80" src="<%=s.getP_image()%>" alt="" />
    				</a>
    				<div class="p-5">
       			    	<a href="#">
            				<h5 class="mb-2 text-2xl font-bold tracking-tight text-white-900 dark:text-white"><%=s.getP_name()%></h5>
        				</a>
        				<p class="mb-3 font-normal text-white-700 dark:text-white-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
           				<p class="mb-3 font-normal text-white-700 dark:text-white-400"><%=s.getP_cost()%></p>
           				
	   					<p class="mb-3 font-normal text-white-700 dark:text-white-400"><%=s.getP_details()%></p>	
	 					 <% if (session.getAttribute("username") != null) {%>	
							<a href="EventBooking.jsp?event_id=<%=s.getP_id()%>" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
           						Book now
             					<svg class="rtl:rotate-180 w-3.5 h-3.5 ms-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                				<path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
            					</svg>
        					</a>
	 					<% } else {
                                   session.setAttribute("logoutredirect", "Events.jsp?event_category=" + request.getParameter("event_category"));
                                %>
                             <a href="login.jsp" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Book Now
								 <svg class="rtl:rotate-180 w-3.5 h-3.5 ms-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                				<path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
            					</svg>
							</a>
                          <% } %>
   					 </div>
     <% }%>
</div>

		<%@include file="Footer.jsp" %>
</body>
</html>



