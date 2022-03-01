<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>  
<% 
               String id =(String)session.getAttribute("id"); 

       try {

                      Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");

                      PreparedStatement addUser = conn.prepareStatement("UPDATE `user` SET `userType`='basic',`leftTest`='3' WHERE  id = ? ");
                      addUser.setString(1,id);
                      
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