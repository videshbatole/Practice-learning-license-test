<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>  
<%  

    String submit        =      request.getParameter("submit");
    String firstName   =      request.getParameter("firstName");
    String lastName    =      request.getParameter("lastName");
    String email           =     request.getParameter("email");
    String mobileNo    =     request.getParameter("mobileNo");
    String dob              =    request.getParameter("dob");
    String address        =    request.getParameter("address");
    String password     =    request.getParameter("password");
    String id =(String)session.getAttribute("id");


if(submit != ""){
try {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");
                                                PreparedStatement es = conn.prepareStatement("SELECT * FROM `user` WHERE id !=? AND email =? ");

                                                    es.setString(1,id);
                                                    es.setString(2,email);
                                                    ResultSet result_email  =  es.executeQuery();

                                                 
                                               int status_email = result_email.next() ? 1 : 0;
                                                  
                                                  if(status_email > 0){
                                                     JSONObject error = new  JSONObject();
                                                        error.put("status","Email");
                                                        out.print(error);
                                                  }else{
                                                      
                                                   PreparedStatement ms = conn.prepareStatement("SELECT * FROM `user` WHERE id != ? AND mobileNo = ? ");

                                                    ms.setString(1,id);
                                                    ms.setString(2,mobileNo);

                                                  
                                                    
                                                    ResultSet result_mobile  =  ms.executeQuery();

                                                    int status_mobile = result_mobile.next() ? 1 : 0;


                                                    if(status_mobile > 0){

                                                         JSONObject error = new  JSONObject();
                                                            error.put("status","Mobile");
                                                            out.print(error);
                                                    }else{

                                                         PreparedStatement reg = conn.prepareStatement("UPDATE `user` SET firstName=?,lastName=?,dob=?,email=?,mobileNo=?,address=?,password=? WHERE id =?");


                                                      
                                                         reg.setString(1,firstName);
                                                         reg.setString(2,lastName);
                                                         reg.setString(3,dob);
                                                         reg.setString(4,email);
                                                         reg.setString(5,mobileNo);
                                                         reg.setString(6,address);
                                                         reg.setString(7,password);
                                                         reg.setString(8,id);

                                                        int x  = reg.executeUpdate();

                                                        if(x> 0){
                                                           
                                                           JSONObject error = new  JSONObject();
                                                            error.put("status","Success");
                                                            out.print(error);
                                                        conn.close();
                                                        }else{
                                                            out.println("field");
                                                        }

                                                    }


                                                  }
                                            

    
} catch (Exception e) {
    
    out.print(e);
}
}else{
 response.sendRedirect("login.html");
}

%>