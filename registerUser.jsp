<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>  
<% 



                String firstName =   request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String Email = request.getParameter("email");
                String dob = request.getParameter("dob");
                String mobileNo = request.getParameter("mobileNo");
                String address = request.getParameter("address");
                String password = request.getParameter("password");
                String userType  = "New";

                try {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");
                                                PreparedStatement es = conn.prepareStatement("SELECT email FROM `user` WHERE email =?");

                                                    es.setString(1,Email);
                                                    ResultSet result_email  =  es.executeQuery();

                                                 
                                               int status_email = result_email.next() ? 1 : 0;
                                                  
                                                  if(status_email > 0){
                                                      JSONObject  email = new  JSONObject();

                                                        email.put("status", "Email");
                                                        out.print(email);
                                                  }else{
                                                      
                                                   PreparedStatement ms = conn.prepareStatement("SELECT  mobileNo FROM `user` WHERE mobileNo =?");

                                                    ms.setString(1,mobileNo);

                                                  
                                                    
                                                    ResultSet result_mobile  =  ms.executeQuery();

                                                    int status_mobile = result_mobile.next() ? 1 : 0;


                                                    if(status_mobile > 0){

                                                         JSONObject  mobile = new  JSONObject();

                                                        mobile.put("status", "Mobile");
                                                        out.print(mobile);
                                                    }else{

                                                         PreparedStatement reg = conn.prepareStatement("INSERT INTO user (firstName ,lastName ,dob,email,mobileNo,address,userType,password) VALUES (?,?,?,?,?,?,?,?)");


                                                      
                                                         reg.setString(1,firstName);
                                                         reg.setString(2,lastName);
                                                         reg.setString(3,dob);
                                                         reg.setString(4,Email);
                                                         reg.setString(5,mobileNo);
                                                         reg.setString(6,address);
                                                         reg.setString(7,userType);
                                                         reg.setString(8,password);

                                                        int x  = reg.executeUpdate();

                                                        if(x> 0){
                                                           JSONObject  success = new  JSONObject();

                                                        success.put("status", "Success");
                                                        out.print(success);
                                                        conn.close();
                                                        }else{
                                                            out.println("field");
                                                        }

                                                    }








                                                  }
                                            

                                             
                                                


                                                 
                                               
                        } catch ( Exception e) {

                        out.println(e);
                        
                        }



               
%>