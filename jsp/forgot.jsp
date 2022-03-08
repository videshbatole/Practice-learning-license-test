<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>  

<%
    
    String email = request.getParameter("email");

       try {

              Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");
              PreparedStatement es = conn.prepareStatement("SELECT * FROM `user`   where email =? ");

              es.setString(1,email);
              ResultSet result_email  =  es.executeQuery();

               int status_email = result_email.next() ? 1 : 0;
                                                  
                    if(status_email > 0){
                        JSONObject error = new  JSONObject();
                        error.put("status","valid");
                        out.print(error);
                    }else{

                        JSONObject error = new  JSONObject();
                        error.put("status","invalid");
                        out.print(error);
                        
                    }


           
       } catch (Exception e) {

           out.print(e);
           
       }


%>