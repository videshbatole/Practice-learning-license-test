var basic = document.getElementById("free");
var standard = document.getElementById("49");
var primium = document.getElementById("99");
var name = document.getElementById("name").value;
var email = document.getElementById("email").value;
var mobile = document.getElementById("mobile").value;

// var rzp1 = new Razorpay(options);

// document.getElementById("99").onclick = function (e) {
//   rzp1.open();
//   e.preventDefault();
// };

var payment = function (plan) {

  var urlString = "jsp/success.jsp?plan="+plan;
  var amount = 100 * plan;
  var options = {
    key: "rzp_test_T6McocDdGa0Qrm", // Enter the Key ID generated from the Dashboard
    amount: amount,
    currency: "INR",
    name: name,
    description: "Test Transaction",
    image: "img/logo.png",
    // "order_id": "123410",
    callback_url: urlString,
    prefill: {
      name: name,
      email: email,
      contact: mobile,
    },
    notes: {
      address: "Razorpay Corporate Office",
    },
    theme: {
      color: "#f4d862",
    },
  };
  var rzp1 = new Razorpay(options);

  rzp1.open(event);
  event.preventDefault();
};

var free = function () {
  $.ajax({
    type: "post",
    url: "jsp/addplan.jsp",
    success: function (response) {
      console.log(response);
      const data = { status: "success" };
      var status = $.parseJSON(response);

      if (data.status === status.status) {
      window.location.replace("http://www.w3schools.com");
      } else {
        alert("something went wrong");
      }
    },
  });
  event.preventDefault;
};

basic.addEventListener("click", free.bind(event));
standard.addEventListener("click", payment.bind(event, "49"));
primium.addEventListener("click", payment.bind(event, "99"));
