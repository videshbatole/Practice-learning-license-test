<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<% 
String logout = request.getParameter("logout");

if(logout != null){
    
   session.invalidate();
    response.sendRedirect("../login.html");

} else{
    response.sendRedirect("../login.html");
}

// public void invalidate(); 

%>