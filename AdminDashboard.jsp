 <%@ page  import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>
 <%@ page import = "javax.servlet.*,java.text.*" %>
<%
String email =(String)session.getAttribute("email");
if (session.getAttribute("email") == null || session.getAttribute("email").equals("")){

   response.sendRedirect("admin.html");
}

                      Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");

                      
                        java.util.Date theDate = new java.util.Date();
                        SimpleDateFormat ft = new SimpleDateFormat ("dd.MM.yyyy");
                        String   TDate = ft.format(theDate);

                        int users =0, noTran =0,TranToday =0,tamount=0,basic=0 , standard =0 , premium = 0;

                     
                     try {
                         
                        PreparedStatement noUserQuery  = conn.prepareStatement("SELECT COUNT(*) FROM `user` ");
                         ResultSet  noOfUsers =  noUserQuery.executeQuery();
                          while(noOfUsers.next()){
                         users = noOfUsers.getInt(1);
                          }

                    PreparedStatement totalTransaction  =  conn.prepareStatement("SELECT count(*) FROM `transaction` ");
                    ResultSet  noTransactions = totalTransaction.executeQuery();
                    while(noTransactions.next()){
                    noTran = noTransactions.getInt(1);
                    }
                        
                     PreparedStatement todaysTran =  conn.prepareStatement("SELECT COUNT(*) FROM `transaction` WHERE date =?" );
                     todaysTran.setString(1,TDate);
                     ResultSet noOfTranToday = todaysTran.executeQuery();
                     while(noOfTranToday.next()){
                          TranToday = noOfTranToday.getInt(1);
                     }

                     PreparedStatement  totalAmount =  conn.prepareStatement("SELECT SUM(amount) FROM `transaction` WHERE date=?");
                     totalAmount.setString(1,TDate);
                      ResultSet  todaysAmount = totalAmount.executeQuery();
                      while (todaysAmount.next()) {
                          tamount =todaysAmount.getInt(1);
                      }

                         PreparedStatement  basicPlanQuery = conn.prepareStatement("SELECT COUNT(*) FROM `user` WHERE userType ='basic'");
                         ResultSet  basicPlan =   basicPlanQuery.executeQuery();
                          while(basicPlan.next()){
                         basic = basicPlan.getInt(1);
                          }

                           PreparedStatement standerdPlanQuery = conn.prepareStatement("SELECT COUNT(*) FROM `user` WHERE userType='standard'");
                         ResultSet standerdPlan =   standerdPlanQuery.executeQuery();
                          while(standerdPlan.next()){
                         standard =standerdPlan.getInt(1);
                          }

                         PreparedStatement premiumPlanQuery = conn.prepareStatement("SELECT  COUNT(*) FROM `user` WHERE  userType ='premium'");
                         ResultSet premiumPlan =   premiumPlanQuery.executeQuery();
                          while(premiumPlan.next()){
                        premium =premiumPlan.getInt(1);
                          }



                    

                     } catch (Exception e) {

                         out.print(e);
                         
                     }

                      









%>





<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Admin</title>
    <!-- google font cdn links -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400;500;600;700&family=Nunito:wght@200;300;400;500;600;700&display=swap"
        rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400&display=swap" rel="stylesheet">

    <!-- font  awsome fonts link -->
    <link rel="stylesheet" href="css/all.css">

 <!--Chart js cdn -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>

<!-- jquery cdn link -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- external css  file -->
    <link rel="stylesheet" href="css/dashboard.css">
   <link rel="stylesheet" href="css/admin.css"> 
</head>

<body>

    <div class="dashboard">

        <!-- navigation links -->
        <nav>
            <div class="logo">
                <h1>Test.</h1>
            </div>

            <div class="avtar">
                <img src="img/avtar.jpg" alt="">
            </div>
            <h3 class="name">Admin</h3>

            <div class="nav-links first-margin">
                <ul>
                    <li class="active">
                        <div class="li"><i class="fa-thin fa-align-justify"> </i>
                            <div class="dashboard-logo"><a href="AdminDashboard.jsp" class="active-link">Dashboard</a></div>
                        </div>
                    </li>
                    
                    <li class="">
                        <div class="li"><i class="fa-thin fa-user-tie"></i>
                            <div class="profile"><a href="userslist.jsp" class="practice-link">Users </a></div>
                        </div>
                    </li>

                    <li>
                        <div class="li"><i class="fa-thin fa-memo-circle-check"></i>
                            <div class="practice"><a href="transactionlist.jsp" class="practice-link">Transactions</a></div>
                        </div>
                    </li>
            </div>
        </nav>
        <!-- navigation  links  end here -->

        <div class="header">

            <!-- logout button start  here -->
            <div class="logout-container">
                <div class="row">
                    <a href="jsp/adminlogout.jsp?logout=true">
                        <div class="logout-logo-txt">
                        <div class="logo-icon">
                            <i class="fa-light fa-power-off "></i>
                        </div>
                        <div class="logo-text">
                            <h4>Logout</h4>
                        </div>
                        </div>
                    </a>
                </div>
            </div>
            <!-- logout button end  here   -->
            <h1 class="dashboard-text">Dashboard</h1>
            <h5 class="welcome">Welcome , Admin</h5>

            <div class="card-row">
                <!-- card 1 -->
                <div class="card">
                    <div class="gif">

                        <img src="img/user.gif" alt="winner" class="card-icon">
                    </div>
                    <div class="data">
                        <h6>Total Users</h6>
                        <h2><% out.print(users);%></h2>
                    </div>

                </div>

                <div class="card">
                    <div class="gif">

                        <img src="img/inbox.gif" alt="winner" class="card-icon">
                    </div>
                    <div class="data">
                        <h6>Transactions Till Date</h6>
                        <h2><%out.print(noTran); %></h2>
                    </div>

                </div>
                <div class="card">
                    <div class="gif">

                        <img src="img/checklist.gif" alt="winner" class="card-icon">
                    </div>
                    <div class="data">
                    <h6>Transactions  of the Today</h6>
                       <h2><% out.print(TranToday);%></h2>
                    </div>

                </div>
                <div class="card">
                    <div class="gif">

                        <img src="img/money-bag.gif" alt="winner" class="card-icon">
                    </div>
                    <div class="data">
                        <h6>Todays Total Amount</h6>
                       <h2><% out.print(tamount); %>rs</h2>
                    </div>

                </div>


            </div>


          <div class="chart-row">
          
          <div class="pie-chart" class="chart">
              <h1 class=" dashboard-text center">Plans</h1>
             <canvas id="chart" width="300"  height="300"></canvas>
          </div>


          
            
    </div>


<script>


        
        const data = {
            labels: [
                'Basic',
                'Standar',
                'Premium'
            ],
            datasets: [{
                label: 'My First Dataset',
                data: [<%out.print(basic); %>, <%out.print(standard); %>, <%out.print(premium); %>],
                backgroundColor: [
                    'rgb(255, 99, 132)',
                    'rgb(54, 162, 235)',
                    'rgb(255, 205, 86)'
                ],
                hoverOffset: 4
            }]
        };

        const ctx = document.getElementById('chart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'doughnut',
            data: data,
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });




</script>

</body>

</html>