
## Authors

- [@videshbatole](https://www.github.com/videshbatole)


# learning  license test practice

This  project  to practice learning  license test questions
  

Requirements:

1:Tomcat Server 
2:xamp/wamp
3:razerpay Api 
4:smtp mail api
5:web browser/crome,firefox etc

Steps:
1: copy this folder  into  C:\xampp\tomcat\webapps
2:import database file which is inside database folder
3: Get  api keys from  "https://razorpay.com/" 
4: Get SMTP mail from "https://smtpjs.com/"
5:from js/testJs.js change api key 
  SecureToken: "Paste Your Smtp js Api key"
6:
## Steps to run project

Requirements:

1. Tomcat Server 

2. xamp/wamp

3. razerpay Api 

4. smtp mail api

5. web browser/crome,firefox etc

Steps:


1: copy this folder  into  C:\xampp\tomcat\webapps

2:import database file which is inside database folder

3: Get  api keys from  "https://razorpay.com/" 

4: Get SMTP mail from "https://smtpjs.com/"

5:from js/testJs.js change api key 

   function sendEmail() {
        Email.send({
          
          SecureToken: "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx",//you smtp mail api key
          To: email,
          From: "XXXX@gmail.com",//add your SMTP mail Here
          Subject: "this  is mail from ",
          Body: massage,
        }).then(checkotp(otp));
      }
6:also js/forgot js 
 function sendEmail() {
        Email.send({
          
          SecureToken: "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx",//you smtp mail api key
          To: email,
          From: "XXXX@gmail.com",//add your SMTP mail Here
          Subject: "this  is mail from ",
          Body: massage,
        }).then(checkotp(otp));
      }

7: In js/payment.js
 
 var payment = function (plan) {

  var urlString = "jsp/success.jsp?plan="+plan;

  var amount = 100 * plan;

  var options = {

    key: "xxx_xxxx_xxxxxxxxxxxxxx", // Enter the Key ID generated from the Dashboard
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

8:now start tomcat apache mysql 
9:type localhost:"PORT_NO"/ltest press Enter

done...............