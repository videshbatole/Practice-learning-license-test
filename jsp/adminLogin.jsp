<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<%

        String email  = (String) request.getParameter("email");
        String password  = (String) request.getParameter("password");

              Class.forName("com.mysql.jdbc.Driver");
              Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");


            try {
                            PreparedStatement loginAdmin = conn.prepareStatement("SELECT * FROM `admin` WHERE email=? AND password=? ");
                            loginAdmin.setString(1,email);
                            loginAdmin.setString(2,password);
                            
                            ResultSet  result = loginAdmin.executeQuery();

                                int x = result.next() ? 1 : 0;

                                if(x > 0){

                                   JSONObject  user = new  JSONObject();
                                    user.put("status","Valid");
                                    out.print(user);
                                    session.setAttribute("email",email);
                                }else{
                                   JSONObject  user = new  JSONObject();
                                    user.put("status","Invalid");
                                    out.print(user);
                                }
            } catch (Exception e) {

                out.print(e);
                
            }
                    



%>