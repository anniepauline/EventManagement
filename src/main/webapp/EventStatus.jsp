<%@page import="model.EventProduct"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Registration"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Status</title>
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
<% if (session.getAttribute("username") != null) {%>
		<div class="relative overflow-x-auto shadow-md sm:rounded-lg mt-8 w-5/6 m-auto mb-32 top-10">
    	   <div class="table-title">
                        <div class="row">
                            <div class="col-sm-4">
      							<h1 class="mb-4  text-xl font-extrabold leading-none tracking-tight text-pink-600 md:text-2xl lg:text-2xl dark:text-pink">Manage Events</h1>
                            </div>
                        </div>
                    </div>  
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
             <th scope="col" class="px-6 py-3">
                    <span class="sr-only">Image</span>
                </th>
                <th scope="col" class="px-6 py-3">
                   Name
                </th>
                <th scope="col" class="px-6 py-3">
                    Cost
                </th>
                <th scope="col" class="px-6 py-3">
                    Phone
                </th>
                <th scope="col" class="px-6 py-3">
                    Email
                </th>
                <th scope="col" class="px-6 py-3">
                   Booked Date
                </th>
                <th scope="col" class="px-6 py-3">
                   Event date
                </th>
                <th scope="col" class="px-6 py-3">
                   Status
                </th>
            </tr>
        </thead>
        <tbody>
            <%
                                Registration s1 = new Registration(session);
                                ArrayList<EventProduct> ar = s1.geteventstatus();
                                Iterator<EventProduct> itr = ar.iterator();
                                while (itr.hasNext()) {
                                	EventProduct s = itr.next();
                            %> 
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                <td  class="px-6 py-4">
                	<img src="<%=s.getP_image()%>" width="100px" height="100px">
                </td>
                <td class="px-6 py-4">
                    <%=s.getP_name()%>
                </td>
                <td class="px-6 py-4">
                    <%=s.getP_cost()%>
                </td>
                <td class="px-6 py-4">
                   <%=s.getPhone()%>
                </td>
                 <td class="px-6 py-4">
                   <%=s.getEmail()%>
                </td>
                 <td class="px-6 py-4">
                    <%=s.getDate()%>
                </td>
                <td class="px-6 py-4">
                   	<%=s.getEventdate()%>
                </td>
                   <%if (s.getStatus().equals("pending")) {%>
                <td class="px-6 py-4 text-right">
                 <form action="addtocart" method="post">
                  	<input class="font-medium text-blue-600 dark:text-blue-500 hover:underline" type="hidden" name="event_id" value="<%=s.getP_id()%>"/>
                    <button type="submit" class="btn btn-danger" name="cancelevent">Cancel</button>                
               	  </form>
                </td>
                  <%} else if (s.getStatus().equals("booked")) {%>
                     <td class="px-6 py-4"> Booked</td>
                    <%} else if (s.getStatus().equals("cancelled")) {%>               
                           <td  class="px-6 py-4 text-red-600">    Cancelled </td>
                     <%}%>  
            </tr>
     	 <%}%>
        </tbody>
    </table>
</div>
<%}%>	
		<%@include file="Footer.jsp" %>
</body>
</html>





