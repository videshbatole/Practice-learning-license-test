<!-- 
 <%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<%
String id =(String)session.getAttribute("id");
if (session.getAttribute("id") == null || session.getAttribute("id").equals("")){

   response.sendRedirect("login.html");
}

ResultSet data = null;
       String  firstName = null ,lastName =null;
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
                         
                         }
                        
       } catch (Exception e) {

           out.print(e);
           
       }


%>  -->

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

    <!-- font  awsome fonts link -->
    <link rel="stylesheet" href="css/all.css">

    <!-- external css  file -->
    <link rel="stylesheet" href="css/dashboard.css">
    <link rel="stylesheet" href="css/practice.css">


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
            <h3 class="name"><% out.print(firstName + " " +lastName);%></h3>

            <div class="nav-links first-margin">
                <ul>
                    <li class="li">
                        <div class="li"><i class="fa-thin fa-align-justify"> </i>
                            <div class="dashboard-logo"><a href="dashboard.jsp" class="practice-link">Dashboard</a>
                            </div>
                        </div>
                    </li>
                    <li class="active">
                        <div class="li"><i class="fa-thin fa-memo-circle-check"></i>
                            <div class="practice"><a href="practice.jsp" class="practice-link">Practice</a></div>
                        </div>
                    </li>
                    <li class="">
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
            <h1 class="dashboard-text">Practice</h1>
            <h5 class="welcome">Welcome ,<% out.print(firstName);%></h5>

            <div class="question-answer">


                <div class="question-toggle">

                    <div class="questions side-border" id="question">
                        <h4 class="heading">Questions</h4>
                    </div>

                    <div class="symbole bottom-border " id="symbol">
                        <h4 class="heading">Traffic Sign</h4>
                    </div>




                </div>

                <div class="question-container   " id="question-div">

                    <!-- question div -->
                    <div class="question-div">
                        <h4><span>1.</span> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illo, ea. </h4>
                        <h3 class="answer"> Ans. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint,
                            explicabo!</h3>
                    </div>

                    <!-- question div -->
                    <div class="question-div">
                        <h4><span>1.</span> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illo, ea. </h4>
                        <h3 class="answer"> Ans. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint,
                            explicabo!</h3>
                    </div>

                    <!-- question div -->
                    <div class="question-div">
                        <h4><span>1.</span> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illo, ea. </h4>
                        <h3 class="answer"> Ans. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint,
                            explicabo!</h3>
                    </div>

                </div>

                <div class="symbols hide" id="symbol-div">

                    <div class="symbol-row">
                        <div class="signs"><img src="img/signs/images/1.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/2.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/3.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/4.PNG" alt=""></div>
                    </div>

                    <div class="symbol-row">
                        <div class="signs"><img src="img/signs/images/5.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/6.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/7.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/8.PNG" alt=""></div>
                    </div>

                    <div class="symbol-row">
                        <div class="signs"><img src="img/signs/images/9.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/10.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/11.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/12.PNG" alt=""></div>
                    </div>

                    <div class="symbol-row">
                        <div class="signs"><img src="img/signs/images/13.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/14.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/15.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/17.PNG" alt=""></div>
                    </div>

                    <div class="symbol-row">
                        <div class="signs"><img src="img/signs/images/18.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/19.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/20.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/21.PNG" alt=""></div>
                    </div>

                    <div class="symbol-row">
                        <div class="signs"><img src="img/signs/images/33.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/22.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/23.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/24.PNG" alt=""></div>
                    </div>

                    <div class="symbol-row">
                        <div class="signs"><img src="img/signs/images/25.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/26.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/27.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/28.PNG" alt=""></div>
                    </div>

                    <div class="symbol-row">
                        <div class="signs"><img src="img/signs/images/29.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/30.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/31.PNG" alt=""></div>
                        <div class="signs"><img src="img/signs/images/32.PNG" alt=""></div>
                    </div>





                </div>



            </div>

        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>

            var questiontab = document.getElementById("question");
            var symboltab = document.getElementById("symbol");
            var questionDiv = document.getElementById("question-div");
            var symbolDiv = document.getElementById("symbol-div");

            $("#question").click(function () {


                questiontab.classList.add("side-border");
                symboltab.classList.remove("side-border");
                symboltab.classList.add("bottom-border");
                questionDiv.classList.remove("hide");
                questiontab.classList.remove("bottom-border");
                symbolDiv.classList.add("hide");



            });

            $("#symbol").click(function () {

                questiontab.classList.remove("side-border");
                symboltab.classList.add("side-border");
                questiontab.classList.add("bottom-border");
                symboltab.classList.remove("bottom-border");
                questionDiv.classList.add("hide");
                symbolDiv.classList.remove("hide");


            });




        </script>
</body>

</html>