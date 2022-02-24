$("#loginform").submit(function (e) {
  var msg = document.getElementById("msg");
  e.preventDefault();

  var form = $("#loginform");

  $.ajax({
    type: "POST",
    url: "jsp/login.jsp",
    data: form.serialize(),
    success: function (response) {
      var json = $.parseJSON(response);
      const valid = { status: "valid" };
      const invalid = { status: "invalid" };
      const user = { type: "New" };
      console.log(json);
      const status = JSON.stringify(json.status);
      const type = JSON.stringify(json.type);

      const validStr = JSON.stringify(valid.status);
      const invalidStr = JSON.stringify(invalid.status);
      const userStr = JSON.stringify(user.type);

      if (status === invalidStr) {
        msg.style.display = "block";

        msg.innerHTML = "Invalid Username and Password";
      } else if (type === userStr) {
        window.location.href = "plans.jsp";
      } else if (status === validStr) {
        window.location.href = "www.google.com";
      }
    },
  });
});
