<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<%
 

 String id =(String)session.getAttribute("id");
 int score = Integer.parseInt(request.getParameter("score"));


//  out.print("id="+id);
//  out.print("score="+score);

 
       ResultSet data = null;
       int  totalPoint = 0 ,totalTest =0 , testLeft=0;
      
       
    



 try {

                      Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");

                      PreparedStatement userQuery = conn.prepareStatement("SELECT *  FROM `user` WHERE id=?");
                      userQuery.setString(1,id);

                       data  =  userQuery.executeQuery();
                         
                         while (data.next()){
                         
                         totalPoint = data.getInt(11);
                         totalTest  = data.getInt(12);
                         testLeft = data.getInt(10);

                         }

                         int newPoints = totalPoint + score;
                         int newTestLeft =testLeft - 1;
                         int newTotaltest =totalTest+1;

                         out.print( "Total points are>"+newPoints +"total test>" +newTotaltest +"Test left >"+newTestLeft);


                

                      PreparedStatement scoreUpate = conn.prepareStatement("UPDATE `user` SET `leftTest`=?,`totalPoint`=?,`totalTest`=? WHERE id=?");
                      scoreUpate.setInt(1,newTestLeft);
                      scoreUpate.setInt(2,newPoints);
                     scoreUpate.setInt(3,newTotaltest);
                     scoreUpate.setString(4,id);

                     scoreUpate.executeUpdate();

                         
  
                        
       } catch (Exception e) {

           out.print(e);
           
       }





%>

