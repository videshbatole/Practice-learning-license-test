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
          SecureToken: "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx",
          To: email,
          From: "XXXX@gmail.com",//add your SMTP mail Here
          Subject: "this  is mail from ",
          Body: massage,
        }).then(checkotp(otp));
      }

      function checkotp(otp) {
        msg.innerHTML = " OTP Send Successfully";
        msg.style.color = "green";
        msg.style.fontSize = "16px";
        msg.style.marginBottom = "3rem";

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
            msg.innerHTML = " OTP Verified";
            msg.style.color = "green";
            msg.style.fontSize = "16px";
            msg.style.marginBottom = "3rem";

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
                      msg.style.fontSize = "16px";
                      msg.style.marginBottom = "3rem";

                      third.classList.add("hide");
                      third.classList.remove("show");
                      first.classList.remove("hide");
                      first.classList.add("show");
                      document.getElementById("forgot-input").value = " ";
                      document.getElementById("forgot-otp").value = " ";
                      document.getElementById("pass").value = " ";
                      document.getElementById("cpass").value = "";
                    } else {
                      msg.innerHTML = "Someting Went Wrong";
                      msg.style.color = "red";
                      msg.style.fontSize = "16px";
                      msg.style.marginBottom = "3rem";
                    }
                  },
                });
              } else {
                msg.innerHTML = "Password must be  same";
                msg.style.color = "red";
                msg.style.fontSize = "16px";
                msg.style.marginBottom = "3rem";
              }
            });
          } else {
            msg.innerHTML = "Invalid OTP";
            msg.style.color = "red";
            msg.style.fontSize = "16px";
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
        var massage =
          " <html><body><h1 style='color:#ffac09;'>Test \n </h1> <p style='font-size:16px;'>Your One Time Password is :  <b style='color:#012E40;'>" +
          otp +
          "</b> </p><p style='color:gray;'>\n Do not share it with anyone</p></body></html>your otp is: ";

        sendEmail(massage, email);

        console.log(otp);
      } else {
        msg.innerHTML = "Email is  not register";
        msg.style.color = "red";
        msg.style.fontSize = "16px";
        msg.style.marginBottom = "3rem";
      }
    },
  });
});
