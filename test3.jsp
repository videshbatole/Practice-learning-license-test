 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   import="java.io.*,java.util.*,java.sql.*,org.json.simple.*"%>

  <%
     
       int  leftTest =Integer. parseInt(request.getParameter("testleft"));

       String email = (String)session.getAttribute("email");

      
    
    if(leftTest <= 0){
 response.sendRedirect("oldplan.jsp");

    }
  
  
  
  
  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Awesome Quiz App | CodingNepal</title>
    <link rel="stylesheet" href="css/test-style.css">
    <!-- FontAweome CDN Link for Icons-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    
</head>
<body>

<input type="hidden" id="email" value="<% out.print(email);%>">
    
    <div class="logo">Test</div>
    <hr>

    
  
    <div class="quiz_box">
        <header>
            <div class="title"></div>
            <div class="timer">
                <div class="time_left_txt">Time Left</div>
                <div class="timer_sec">30</div>
            </div>
            <div class="time_line"></div>
        </header>
        <section>
            <div class="que_text">
                <!-- Here I've inserted question from JavaScript -->
            </div>
            <div class="option_list">
                <!-- Here I've inserted options from JavaScript -->
            </div>
        </section>

        <!-- footer of Quiz Box -->
        <footer>
            <div class="total_que">
                <!-- Here I've inserted Question Count Number from JavaScript -->
            </div>
            <button class="next_btn">Next Que</button>
        </footer>
    </div>

    <!-- Result Box -->
    <div class="result_box" id="target">
        <div class="icon">
            <i class="fas fa-crown"></i>
        </div>
        <div class="complete_text">You've completed the Test</div>
        <div class="score_text">
            <!-- Here I've inserted Score Result from JavaScript -->
        </div>
        <div class="buttons">
            <!-- <button class="restart">Dashboard</button> -->
            <a href="dashboard.jsp"  class="restart"><button class="quit" id="pointAdd">Dashboard</button></a>
            
        </div>
    </div>
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- Inside this JavaScript file I've inserted Questions and Options only -->
    <script src="js/questions3.js"></script>

    <!-- Inside this JavaScript file I've coded all Quiz Codes -->
    <script src="js/testJs.js"></script>
</body>
</html>