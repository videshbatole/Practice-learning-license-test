// creating an array and passing the number, questions, options, and answers
let questions = [
    
  {
    numb: 1,
    question:
      "पादचारी सडकपारच्या ठिकाणी जेव्हा रस्ता ओलांडण्याच्या प्रततक्षेत लोक उभे असतील तेव्हा",
    answer:
      "वाहन थाांबवून पादचारी रस्ता ओलांडेपयंत प्रततक्षा करावी त्यानंतरच पुढे जाव",
    options: [
      "हॉर्न वाजवून पुढे जावे",
      "वाहनांचा वेग कमी करून , हॉर्न वाजवून पुढे जाव",
      "वाहन थाांबवून पादचारी रस्ता ओलांडेपयंत प्रततक्षा करावी त्यानंतरच पुढे जाव",
    ],
  },
  {
    numb: 2,
    question:
      "एका अरुांद पुलाजवळ, विरुध्द बाजूने येणारे वाहर् त्या पुलावर प्रवेश करण्याच्या बेतात असेल तेव्हा",
    answer: "समोरील वाहर् पूल ओलाांडेपयंत प्रततक्षा करावी व त्यानंतर पुढे जावे",
    options: [
      "वेग वाढवूर् पूल लवकरात लवकर ओलाांडण्याचा प्रयत्र् करावा",
      "हेडलाईट चालू करुर् पूल ओलाांडावा",
      "समोरील वाहर् पूल ओलाांडेपयंत प्रततक्षा करावी व त्यानंतर पुढे जावे",
    ],
  },
  {
    numb: 3,
    question: "एकमागी वाहतुकीचा रस्त्यावर",
    answer: "ररव्हसन चगअरमध्ये वाहर् चालवू र्ये",
    options: [
      "वाहने उभी करण्यास बांदी आहे",
      "वाहने ओव्हरटेकीांग करण्यास बांदी आहे",
      "ररव्हसन चगअरमध्ये वाहर् चालवू र्ये",
    ],
  },
  {
    numb: 4,
    question: "समोरील वाहन ओलाांडण्यासाठी/ओव्हरटेक्साठी",
    answer: "त्या वाहनच्या उजव्या बाजूकडूर् जावे",
    options: [
      "जर रस्ता रुांद असल्यास त्या वाहनच्या डाव्या बाजूने जावे",
      "त्या वाहनच्या डाव्या बाजूकडूर् जावे",
      "त्या वाहनच्या उजव्या बाजूकडूर् जावे",
    ],
  },
  {
    numb: 5,
    question: "मनुष्यवरीहित रेल्वे क्रोसिंग ओलाांडण्यापूवी वाहर्चालकाने",
    answer:
      "रस्त्याच्या डाव्या बाजूस वाहन थाांबवून रेल्वे येत नसर्ल्याची खात्री करावी",
    options: [
      "रेल्वे जाईपयंत प्रततक्षा करावी",
      "रस्त्याच्या डाव्या बाजूस वाहन थाांबवून रेल्वे येत नसर्ल्याची खात्री करावी",
      "हॉर्न वाजवून लवकरात लवकर रेल्वे मार्ग ओलाांडावा",
    ],
  },

  {
    numb: 6,
    question: "When is overtaking is prohibited?",
    answer: "When the vehicle is being driven on a steep hill",
    options: [
      "When the road is marked with a broken center line in the colour white",
      "When the vehicle is being driven on a steep hill",
      "When the road is marked with a continuous center line in the colour yellow",
    ],
  },

  {
    numb: 7,
    question: "तुम्ही पररवहन वाहन कसे ओळखाल?",
    answer: "वाहनाची नंबरप्लेट पाहून",
    options: [
      "वाहनाच्या रांगावरुन",
      "वाहनाची नंबरप्लेट पाहून",
      "वाहनांच्या टायरच्या आकारावरुन",
    ],
  },

  {
    numb: 8,
    question: "शिकाऊ लायसन्सची विधीग्राहयता?",
    answer: "6 महिने",
    options: ["6 महिने", "लायसन्स मिठ्ठेपर्यत", "30 ठदवस"],
  },

  {
    numb: 9,
    question: "फूटपाथवरिहित रस्त्यावर पादचा-याांनी",
    answer: "रस्त्याच्या उजव्या बाजूकडून चालावे",
    options: [
      "रस्त्याच्या उजव्या बाजूकडून चालावे ",
      "रस्त्याच्या कोणत्याही बाजूकडून चालावे",
      "रस्त्याच्या डाव्या बाजूकडून चालावे",
    ],
  },

  {
    numb: 10,
    question: "वाहनांसाठी मार्ग मोकळा करुन दयावा",
    answer: "रुग्णवाहिका आणि अग्निशामक वाहन",
    options: [
      "एक्सप्रेस, सुपर एक्सप्रेस बसेस",
      "रुग्णवाहिका आणि अग्निशामक वाहन ",
      "पोलीस वाहने",
    ],
  },

  {
    numb: 11,
    question: "विरुद्ध बाजूने येणा-या वाहनांना कोणत्या बाजूने जावू द्वयावे?",
    answer: "तुमच्या उजव्या बाजूने",
    options: [
      "कोणत्याही बाजूने",
      "तुमच्या डाव्या बाजूने",
      "तुमच्या उजव्या बाजूने",
    ],
  },

  {
    numb: 12,
    question: "वाहन चालकाने आपले वाहन",
    answer: "रस्त्याच्या डाव्या बाजूने चालवावे",
    options: [
      "रस्त्याच्या मधोमध चालवावे",
      "रस्त्याच्या डाव्या बाजूने चालवावे",
      "रस्त्याच्या उजव्या बाजूने चालवावे",
    ],
  },

  {
    numb: 13,
    question:
      "रात्रीच्या वेळी जेव्हा वाहन रस्त्याच्या कडेला पार्क केले असेल तेव्हा",
    answer: "पार्किंग दिवे चालू करावेत",
    options: [
      "लायसेन्स धारक व्यक्तीने वाहन चालकाच्या सीटवर बसावे",
      "पार्किंग दिवे चालू करावेत",
      "वाहन लॉक करावे",
    ],
  },

  {
    numb: 14,
    question: "यावेळी फॉग लाईट वापरले जातात",
    answer: "धुक्याच्या वेळी",
    options: [
      "धुक्याच्या वेळी",
      "विरुध्द बाजूचे वाहन मंद प्रकाशझोताचा वापर करीत नाही",
      "रात्रीच्या वेळी",
    ],
  },

  {
    numb: 15,
    question:
      "रात्रीच्या वेळी जेव्हा वाहन रस्त्याच्या कडेला पार्क केले असेल तेव्हा",
    answer: "पार्किंग दिवे चालू करावेत",
    options: [
      "पार्किंग दिवे चालू करावेत",
      "लायसेन्स धारक व्यक्तीने वाहन चालकाच्या सीटवर बसावे",
      "वाहन लॉक करावे",
    ],
  },
];