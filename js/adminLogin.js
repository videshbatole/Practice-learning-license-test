var msg = document.getElementById("msg");

$("#loginForm").submit(function (e) {
  e.preventDefault();
  var form = $("#loginForm");

  $.ajax({
    type: "POST",
    url: "jsp/adminLogin.jsp",
    data: form.serialize(),
    success: function (response) {
      var json = $.parseJSON(response);
      const valid = { status: "Valid" };
      const invalid = { status: "Invalid" };
      const responseData = json.status;

      const validUser = valid.status;
      const InvalidUser = invalid.status;

      if (InvalidUser === responseData) {
        msg.innerHTML = "Invalid username and  password";
      } else if (validUser === responseData) {
        window.location.replace("AdminDashboard.jsp");
      }
    },
  });
});
