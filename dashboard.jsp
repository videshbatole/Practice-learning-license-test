
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

<%


String id =(String)session.getAttribute("id");
if (session.getAttribute("id") == null || session.getAttribute("id").equals("")){

   response.sendRedirect("login.html");
}



       ResultSet data = null;
       String  firstName = null ,lastName =null , testLeft=null;
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
                         testLeft = data.getString(10);
                         
                         
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
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400&display=swap" rel="stylesheet">

    <!-- font  awsome fonts link -->
    <link rel="stylesheet" href="css/all.css">

    <!-- external css  file -->
    <link rel="stylesheet" href="css/dashboard.css">

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
            <h3 class="name"><% out.print(firstName +"  " + lastName);%></h3>

            <div class="nav-links first-margin">
                <ul>
                    <li class="active">
                        <div class="li"><i class="fa-thin fa-align-justify"> </i>
                            <div class="dashboard-logo"><a href="dashboard.jsp" class="active-link">Dashboard</a></div>
                        </div>
                    </li>
                    <li>
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
            <h1 class="dashboard-text">Dashboard</h1>
            <h5 class="welcome">Welcome ,<% out.print(firstName);%></h5>

            <div class="card-row">
                <!-- card 1 -->
                <div class="card">
                    <div class="gif">

                        <img src="img/award.gif" alt="winner" class="card-icon">
                    </div>
                    <div class="data">
                        <h6>Total Points</h6>
                        <h2>5555</h2>
                    </div>

                </div>

                <div class="card">
                    <div class="gif">

                        <img src="img/exam.gif" alt="winner" class="card-icon">
                    </div>
                    <div class="data">
                        <h6>Total Test</h6>
                        <h2>5555</h2>
                    </div>

                </div>
                <div class="card">
                    <div class="gif">

                        <img src="img/checklist.gif" alt="winner" class="card-icon">
                    </div>
                    <div class="data">
                        <h6>Total Test left</h6>
                        <h2><% out.print(testLeft);%></h2>
                    </div>

                </div>
                <div class="card">
                    <div class="gif">

                        <img src="img/award.gif" alt="winner" class="card-icon">
                    </div>
                    <div class="data">
                        <h6>Total Points</h6>
                        <h2>5555</h2>
                    </div>

                </div>


            </div>


            <!-- languages start  here  -->

            <div class="exam-row">

                <h1 class="language-heading">Select language</h1>
                <div class="language-container">
                    <div class="language">
                        <h2>English</h2>
                        <div class="instructions">
                            <h5>1. You will have only <span>15 seconds</span> per each question.</h5>
                            <h5>2. Once you select your answer, it can't be undone.</h5>
                            <h5>3. You can't select any option once time goes off.</h5>
                            <h5>4. You can't exit from the test after you start test.</h5>
                            <h5>5. You'll get points on the basis of your correct answers.</h5>

                        </div>
                        <a href="test.html" class="english-btn">Start</a>
                    </div>

                    <div class="language middel-lang">
                        <h2>Hindi</h2>
                        <div class="instructions middel-lang">
                            <h5>1. आपके पास प्रत्येक प्रश्न के लिए केवल 15 सेकंड का समय होगा।</h5>
                            <h5>2. एक बार जब आप अपना उत्तर चुन लेते हैं, तो इसे पूर्ववत नहीं किया जा सकता है।</h5>
                            <h5>3.समय समाप्त होने के बाद आप कोई विकल्प नहीं चुन सकते।</h5>
                            <h5>4. परीक्षण शुरू करने के बाद आप परीक्षा से बाहर नहीं निकल सकते।</h5>
                            <h5>5. आपको आपके सही उत्तरों के आधार पर अंक मिलेंगे।</h5>

                        </div>
                        <a href="test.html" class="start middel-btn">Start</a>
                    </div>

                    <div class="language">
                        <h2>Marathi</h2>
                        <div class="instructions">
                            <h5>1.प्रत्येक प्रश्नासाठी तुमच्याकडे फक्त 15 सेकंद असतील.</h5>
                            <h5>2. एकदा तुम्ही तुमचे उत्तर निवडल्यानंतर, ते पूर्ववत केले जाऊ शकत नाही</h5>
                            <h5>3. एकदा वेळ निघून गेल्यावर तुम्ही कोणताही पर्याय निवडू शकत नाही.</h5>
                            <h5>4. तुम्ही चाचणी सुरू केल्यानंतर तुम्ही चाचणीतून बाहेर पडू शकत नाही.</h5>
                            <h5>5. तुमच्या योग्य उत्तरांच्या आधारे तुम्हाला गुण मिळतील.</h5>

                        </div>
                        <a href="test.html" class="start">Start</a>
                    </div>
                </div>

            </div>
        </div>
    </div>




</body>

</html>