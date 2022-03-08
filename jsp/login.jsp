<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>  
<% 
       String email =   request.getParameter("email");
       String password =   request.getParameter("password");


        try {
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");

                      PreparedStatement userQuery = conn.prepareStatement("SELECT `id` , `userType`, `firstName`   FROM `user` WHERE email=? AND password =?");
                      userQuery.setString(1,email);
                      userQuery.setString(2,password);
                      
                      ResultSet userID  =  userQuery.executeQuery();

                       int queryStatus = userID.next() ? 1 : 0;

                    
                               
                       if(queryStatus > 0){

                        
                         String userStatus = userID.getString(1);
                         String  userplan = userID.getString(2);
                         String  username = userID.getString(3);
                        



                         session.setAttribute("id",userStatus);  
                         session.setAttribute("name",username);
                         session.setAttribute("user",userplan);
                         session.setAttribute("email",email);
                         
                         
                        

                          JSONObject  user = new  JSONObject();
                          user.put("status","valid");
                          user.put("type",userplan);
                           out.print(user);
                        
                         
                         
                       }else{

            
                          JSONObject error = new  JSONObject();
                          error.put("status","invalid");
                          out.print(error);
                       }
                      
                    //  while (userID.next()) {

                    //   String user =  userID.getString(1);

                    //   //  JSONObject  valid = new  JSONObject();

                    //   //                                   email.put("status", "Email");
                    //   //                                   out.print(email);

                       
                    //  }

          
        } catch (Exception e) {

          out.println(e);
          
        }
      

         
%>