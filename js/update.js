var update = document.getElementById("update_profile");

$("#update_profile").submit(function (e) {
  e.preventDefault();

  var form = $("#update_profile").trim();

  $.ajax({
    type: "POST",
    url: "jsp/updateProfile.jsp",
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
       msg.innerHTML = "Successfuly Updated";
     }
    },
  });
});
