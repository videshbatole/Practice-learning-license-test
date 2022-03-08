
 <%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<%

String id =(String)session.getAttribute("id");

if (session.getAttribute("id") == null || session.getAttribute("id").equals("")){

   response.sendRedirect("login.html");


}


       ResultSet data = null;
       String  firstName = null ,lastName =null , email  = null , dob = null ,mobileNo =null , address=null ,plan =null ,password =null;
    //    String mobile = null ,  ;



 try {

                      Class.forName("com.mysql.jdbc.Driver");
                      Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest","root","");

                      PreparedStatement userQuery = conn.prepareStatement("SELECT *  FROM `user` WHERE id=?");
                      userQuery.setString(1,id);

                       data  =  userQuery.executeQuery();
                         
                         while (data.next()){
                         firstName  =   data.getString(2);
                         lastName = data.getString(3);
                         dob = data.getString(4);
                         email = data.getString(5);
                         mobileNo = data.getString(6);
                         address = data.getString(7);
                         plan = data.getString(8);
                        password = data.getString(9);

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
    <title>Document</title>
    <!-- google font cdn links -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400;500;600;700&family=Nunito:wght@200;300;400;500;600;700&display=swap"
        rel="stylesheet">

         <!-- jquery cdn link -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- font  awsome fonts link -->
    <link rel="stylesheet" href="css/all.css">

    <!-- external css  file -->
    <link rel="stylesheet" href="css/dashboard.css">
    <link rel="stylesheet" href="css/profile.css">


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
            <h3 class="name"><%  out.print(firstName);  out.print(' '); out.print(lastName); %></h3>

            <div class="nav-links first-margin">
                <ul>
                    <li class="li">
                        <div class="li"><i class="fa-thin fa-align-justify"> </i>
                            <div class="dashboard-logo"><a href="dashboard.jsp" class="practice-link">Dashboard</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="li"><i class="fa-thin fa-memo-circle-check"></i>
                            <div class="practice"><a href="practice.jsp" class="practice-link">Practice</a></div>
                        </div>
                    </li>
                    <li class="active">
                        <div class="li"><i class="fa-thin fa-user-tie"></i>
                            <div class="profile"><a href="profile.jsp" class="practice-link">Profile</a></div>
                        </div>
                    </li>


            </div>
        </nav>
        <!-- navigation  links  end here -->

        <div class="header">

            <!-- logout button start  here -->
            <div class="logout-container">
                <div class="row">
                    <a href="jsp/logout.jsp?logout=true">
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
            <h1 class="dashboard-text">Edit Profile</h1>
            <h5 class="welcome">Welcome ,<%  out.print(firstName); %></h5>

            <div class="profile-container">

                <span id="msg" style="margin-left:7rem;color:red; font-size: 18px;margin-left: 32rem;"></span>
                <form id="update_profile">

                    <div class="circle">
                        <div class="profile-image-container">
                            <img src="img/avtar.jpg" alt="profile-pic" class="profile-image">

                            <label for="file-upload" class="custom-file-upload">
                                <i class="fa-solid fa-pencil"></i>
                            </label>
                            <input id="file-upload" type="file" />
                        </div>
                    </div>

                    <div class="input-form-container">
                       <div class="plan"><% out.print(plan);%></div>
                        <div class="names-container">
                            <div class="mr">
                                <label for="name" class="lable">First Name</label>
                                <div>
                                    <input type="text" class="input-fields" name="firstName" value="<%  out.print(firstName);  %>"  required>
                                </div>
                            </div>

                            <div class="mr">
                                <label for="name" class="lable">Last Name</label>
                                <div>
                                    <input type="text" class="input-fields" name="lastName" value="<%out.print(lastName);%>" required>
                                </div>
                            </div>
                            <!-- <input type="text"> -->
                        </div>

                        <div class="contact-container">
                            <div class="mr">
                                <label for="name" class="lable">Email</label>
                                <div>
                                    <input type="email" class="input-fields" name="email" value="<%out.print(email);%>" required>
                                </div>
                            </div>

                            <div class="mr">
                                <label for="name" class="lable">Mobile No</label>
                                <div>
                                    <input type="text" max-lenght="10" min-lenght="10" class="input-fields" name="mobileNo" value="<%out.print(mobileNo);%>" required>
                                </div>
                            </div>
                            <!-- <input type="text"> -->
                        </div>


                        <div class="long-input-container">
                            <div class="email-container">
                                <label for="name" class="lable">Date Of Birth</label>
                                <div>
                                    <input type="text" class="input-fields long-input" name="dob" value ="<%out.print(dob);%>" required>
                                </div>
                            </div>
                        </div>

                        <div class="long-input-container m-top">
                            <div class="email-container">
                                <label for="name" class="lable">Address</label>
                                <div>
                                    <input type="text" class="input-fields long-input" name="address" value="<%out.print(address);%>" required>
                                </div>
                            </div>
                        </div>

                        <div class="long-input-container m-top">
                            <div class="email-container">
                                <label for="name" class="lable">Password</label>
                                <div>
                                    <input type="password" class="input-fields long-input" Name="password" value="<%out.print(password);%>" required>
                                </div>
                            </div>
                        </div>


                        <input type="hidden" name="submit" value="submit">

                        <button class="save-btn m-top" type="submit" >Save</button>


                    </div>

            </div>


            </form>
        </div>
    </div>


    
        <script src="js/update.js"></script>

</body>

</html>