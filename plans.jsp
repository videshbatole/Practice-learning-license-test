<%@ page import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>  
<%  String name=(String)session.getAttribute("name");  
       String id =(String)session.getAttribute("id"); 

%>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plans | licence test</title>
    <!-- google font cdn links -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400;500;600;700&family=Nunito:wght@200;300;400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- font  awsome fonts link -->
    <link rel="stylesheet" href="css/all.css">

    <!-- external css  file -->
    <link rel="stylesheet" href="css/plan.css">
    <link rel="stylesheet" href="css/index.css">

</head>

<body>

    <nav class="plan-logo side-margin">

        <h1 class="heading logo"> Test.</h1>

    </nav>

    <div class="container side-margin">

        <div class="image-container">
            <img src="img/plan-img.png" alt="girl-img" class="plan-img">

        </div>

        <div class="text-container">
            <div>

                <h1 class=" margin-top welcome-msg">Welcome   <%   out.print(name);  out.print(id);%></h1>
                <h6 class="sub-msg">Choose your plans</h6>
            </div>



            <div class="price-plan">


                <div class="plan">
                    <img src="img/money-bag.gif" alt="money-bag" class="money-icon">
                    <h1 class="sub_heading">Basic</h1>
                    <h3 class="plan-discription"> Get 3 Test for free</h3>

                    <button class="plan-btn l-space" id="free" type="button" id="free">Start</button>
                </div>

                <div class="plan">
                    <img src="img/money-bag.gif" alt="money-bag" class="money-icon">
                    <h1 class="sub_heading"> Standard 49</h1>
                    <h3 class="plan-discription"> Get 10 Test </h3>

                    <button class="plan-btn l-space " id="49" type="button">Start</button>

                </div>

                <div class="plan">
                    <img src="img/money-bag.gif" alt="money-bag" class="money-icon">
                    <h1 class="sub_heading"> Primium 99</h1>
                    <h3 class="plan-discription"> Get unlimited Test</h3>

                    <button class="plan-btn l-space " id="99" type="button">Start</button>

                </div>
            </div>
        </div>

    </div>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script src="js/payment.js"></script>

</body>

</html>