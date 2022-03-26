var password = document.getElementById("password");
var cPassword = document.getElementById("cpassword");
var msg = document.getElementById("msg");

$("#regForm").submit(function (e) {
  if (password.value != cPassword.value) {
    msg.style.display = "block";
    msg.innerHTML = "Password must be same";
    msg.style.color = "red";
    e.preventDefault();
  } else if (password.value == cPassword.value) {
    e.preventDefault();

    msg.style.display = "none";

    var form = $("#regForm");

    $.ajax({
      type: "POST",
      url: "registerUser.jsp",
      data: form.serialize(),
      success: function (data) {
        var json = $.parseJSON(data);
        const email = { status: "Email" };
        const mobile = { status: "Mobile" };
        const success = { status: "Success" };

        const status = JSON.stringify(json.status);
        const stremail = JSON.stringify(email.status);
        const strmobile = JSON.stringify(mobile.status);
        const strsuccess = JSON.stringify(success.status);

        console.log(status);

        if (status === stremail) {
          msg.style.display = "block";
          msg.style.color = "red";
          msg.innerHTML = "Email Is Already Used";
        } else if (status === strmobile) {
          msg.style.display = "block";
          msg.style.color = "red";
          msg.innerHTML = "Mobile  No Is Already Used";
        } else if (status === strsuccess) {
          msg.style.display = "block";
          msg.style.color = "green";
          msg.innerHTML = "Successfuly Registerd";
          $("#regForm").trigger("reset");
        }
      },
    });
  }
});
