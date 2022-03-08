$("#email-form").submit(function (e) {
  e.preventDefault();

  var email = document.getElementById("forgot-input").value;
  var data = "email=" + email;
  const msg = document.getElementById("msg");

  $.ajax({
    type: "POST",
    url: "jsp/forgot.jsp",
    data: data,
    success: function (response) {
      var json = $.parseJSON(response);
      const valid = { status: "valid" };
      const check = valid.status;
      const data = json.status;

      function sendEmail() {
        Email.send({
          SecureToken: "5020be41-9b51-42a4-b5df-f91f2ec042b7",
          To: email,
          From: "demop2424@gmail.com",
          Subject: "this  is mail from ",
          Body: massage,
        }).then(checkotp(otp));
      }

      function checkotp(otp) {
        const first = document.getElementById("1");
        const second = document.getElementById("2");
        const third = document.getElementById("3");

        first.classList.add("hide");
        second.classList.remove("hide");
        second.classList.add("show");
        $("#verify-otp").submit(function (e) {
          e.preventDefault();
          const userotp = document.getElementById("forgot-otp").value;

          if (otp === userotp) {
            second.classList.remove("show");
            second.classList.add("hide");
            third.classList.remove("hide");
            third.classList.add("show");

            $("#password").submit(function (e) {
              e.preventDefault();
              var password = document.getElementById("pass").value;
              var cpassword = document.getElementById("cpass").value;

              if (password === cpassword) {
                var userPassword = "email=" + email + "&password=" + password;
                $.ajax({
                  type: "post",
                  url: "jsp/forgotPassword.jsp",
                  data: userPassword,
                    success: function (response) {
                      
                        var json = $.parseJSON(response);
                        const success = { status: "success" };
                        const check = success.status;
                        const data = json.status;

                        if (check === data) {

                             msg.innerHTML = "Password  change Successfully";
                             msg.style.color = "green";
                             msg.style.fontSize = "20px";
                             msg.style.marginBottom = "3rem";
                            

                        } else {

                              msg.innerHTML = "Someting Went Wrong";
                              msg.style.color = "red";
                              msg.style.fontSize = "20px";
                              msg.style.marginBottom = "3rem";
                            
                            

                        }
                   
                  },
                });
              } else {
                msg.innerHTML = "Password must be  same";
                msg.style.color = "red";
                msg.style.fontSize = "20px";
                msg.style.marginBottom = "3rem";
              }
            });
          } else {
            msg.innerHTML = "Invalid otp";
            msg.style.color = "red";
            msg.style.fontSize = "20px";
            msg.style.marginBottom = "3rem";
          }
        });
      }

      if (check === data) {
        function generateOTP() {
          var digits = "0123456789";
          let OTP = "";
          for (let i = 0; i < 4; i++) {
            OTP += digits[Math.floor(Math.random() * 10)];
          }
          return OTP;
        }
        var otp = generateOTP();
        var massage = "your otp is:" + otp;

        sendEmail(massage, email);

        console.log(otp);
      } else {
        msg.innerHTML = "Email is  not register";
        msg.style.color = "red";
        msg.style.fontSize = "20px";
        msg.style.marginBottom = "3rem";
      }
    },
  });
});
