<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>  

<%
    
    String email = request.getParameter("email");
     String password = request.getParameter("password");
    

       try {

                      Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");

                      PreparedStatement addUser = conn.prepareStatement("UPDATE `user` SET `password`=?  WHERE email=? ");
                      addUser.setString(1,password);
                      addUser.setString(2,email);
                      
                      int x =addUser.executeUpdate();

                       JSONObject  status = new  JSONObject();

                      if(x>0){

                           status.put("status","success");

                          out.print(status);
                      }else{
                           status.put("status","faild");
                          out.print(status);
                      }
       
        
           
       } catch (Exception e) {

           out.print(e);
           
       }



%>