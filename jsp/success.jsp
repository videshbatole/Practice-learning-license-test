<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<%

if (session.getAttribute("id") == null || session.getAttribute("id").equals("")){

   response.sendRedirect("login.html");
    
}else{

 
                    String planType = null;
                    String id =(String)session.getAttribute("id"); 
                    String planstr =request.getParameter("plan");
                    int  tests = 10;  
                    int  plan  =Integer.parseInt(request.getParameter("plan"));

                    
                   if(plan  <=   49){

                       planType = "standard";
                  
                        
                        
                  try {

                      Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");

                      PreparedStatement userQuery = conn.prepareStatement("UPDATE `user` SET `userType`= ?, `leftTest`=? WHERE id=?");

                      userQuery.setString(1,planType);
                      userQuery.setString(2,"10");
                      userQuery.setString(3,id);
                      int  result = userQuery.executeUpdate();

                                  
           
       } catch (Exception e) {

           out.print(e);
           
       }

        }else{
                       planType ="premium";

                          Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");

                      PreparedStatement userQuery = conn.prepareStatement("UPDATE `user` SET `userType`= ?, `leftTest`=? WHERE id=?");

                      userQuery.setString(1,planType);
                      userQuery.setString(2,"0");
                      userQuery.setString(3,id);
                      int  result = userQuery.executeUpdate();

        }
}
    %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <style>
        .main-container {

            text-align: center;

        }

        img {

            width: 60%;
        }

        .text {
            position: absolute;
            margin-top: -8%;
            left: 42%;
            color: gray;
        }
        .msg{
            position: absolute;
            margin-top: -5%;
            left: 40%;
            color: gray;

        }
        .timer{
             position: absolute;
            margin-top: -3%;
            left: 47%;
            color: gray;
        }
    </style>
    <div class="main-container">


        <img src="../img/payment-gateway.gif" alt="">
        <h1 class="text">Payment Successfull</h1>

        <h5 class="msg">Please do not refresh or close this window you will be redirect </h5>

        <div id="some_div" class="timer">

        </div>

    </div>

    <script>
        var timeLeft = 30;
        var elem = document.getElementById('some_div');

        var timerId = setInterval(countdown, 1000);

        function countdown() {
            if (timeLeft == -1) {
                clearTimeout(timerId);
                doSomething();
            } else {
                elem.innerHTML = timeLeft + ' seconds remaining';
                timeLeft--;
            }
        }

    function    doSomething(){
        window.location.replace("../dashboard.jsp");
        }

        
    </script>
</body>

</html>
