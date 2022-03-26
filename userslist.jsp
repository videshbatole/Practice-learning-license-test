 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<%

                        String email =(String)session.getAttribute("email");
                        if (session.getAttribute("email") == null || session.getAttribute("email").equals("")){

                        response.sendRedirect("admin.html");
                        }


                      Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");
                       ResultSet  data = null ;

                      try {
                         
                         PreparedStatement transactionData = conn.prepareStatement("SELECT id, firstName , lastName  , email , mobileNo ,address , userType  FROM `user`;");
                           data = transactionData.executeQuery();

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

 <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

    <!-- font  awsome fonts link -->
    <link rel="stylesheet" href="css/all.css">

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
                    <li>
                        <div class="li"><i class="fa-thin fa-align-justify"> </i>
                            <div class="dashboard-logo"><a href="AdminDashboard.jsp" class="practice-link">Dashboard</a></div>
                        </div>
                    </li>
                    
                    <li  class="active">
                        <div class="li"><i class="fa-thin fa-user-tie"></i>
                            <div class="profile"><a href="userslist.jsp"  class="active-link">Users </a></div>
                        </div>
                    </li>

                    <li>
                        <div class="li"><i class="fa-thin fa-memo-circle-check"></i>
                            <div class="practice"><a href="transactionlist.jsp"   class="practice-link">Transactions</a></div>
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
            <h1 class="dashboard-text">Users</h1>
            <h5 class="welcome">Welcome , Admin</h5>

               
            <div class="list-container">

         <div class="search-transaction" >
         
         <div  class="search-container">
         <div class="print"><i class="fa-thin fa-file-lines" id="print"> <div class="text">Print</div></i>
         </div>
         <input type="text" class="search-input" id="search"><i class="fa-regular fa-magnifying-glass"></i>
          </div>
          
          </div>

         <div  id="printdivcontent">
           
            <table >
            <tr class="table-header" >
                    
                    <th>User Id </th>
                     <th>First Name</th>
                      <th>Last Name</th>
                    <th >Email Id</th>
                    <th>Mobile No</th>
                    <th>Address</th>
                    <th>Plan</th>
                </tr>
            
       <% int  count=1; while(data.next()){ %>
               <tr>
                   
                    <td><% out.print(data.getString(1)); %></td>
                    <td><% out.print(data.getString(2)); %></td>
                    <td><% out.print(data.getString(3)); %></td>
                     <td><% out.print(data.getString(4)); %></td>
                     <td><% out.print(data.getString(5)); %></td>
                     <td><% out.print(data.getString(6)); %></td>
                     <td><% out.print(data.getString(7)); %></td>
                    
               </tr>
               
               <% count++; } %>
       
             
               
            </table>


            </div>
               
               </div>

           
    </div>


   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

   <script src="js/transaction.js"></script>


          

</body>

</html>