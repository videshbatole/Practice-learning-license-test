<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<% 
String logout = request.getParameter("logout");

if(logout != null){
    
   session.invalidate();
    response.sendRedirect("../admin.html");

} else{
    response.sendRedirect("../admin.html");
}

// public void invalidate(); 

%>