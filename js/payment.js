var basic = document.getElementById("free");
var standard = document.getElementById("49");
var primium = document.getElementById("99");


// var rzp1 = new Razorpay(options);

// document.getElementById("99").onclick = function (e) {
//   rzp1.open();
//   e.preventDefault();
// };

var payment = function ( plan) {
  
  var amount = 100 * plan;
  var options = {
    key: "rzp_test_T6McocDdGa0Qrm", // Enter the Key ID generated from the Dashboard
    amount: amount,
    currency: "INR",
    name: "Acme Corp",
    description: "Test Transaction",
    image: "img/logo.png",
    // "order_id": "123410",
    callback_url: "success.html",
    prefill: {
      name: "Gaurav Kumar",
      email: "gaurav.kumar@example.com",
      contact: "9999999999",
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

 var free =function() {
   alert("you have choosed free test");
   event.preventDefault;
   
}

basic.addEventListener("click", free.bind(event));
standard.addEventListener("click", payment.bind(event, "49"));
primium.addEventListener("click", payment.bind(event, "99"));
