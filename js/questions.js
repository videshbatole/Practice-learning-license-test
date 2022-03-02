// creating an array and passing the number, questions, options, and answers


let questions = [
  {
    numb: 1,
    question:
      "A person driving a vehicle in a public place without a licence, is liable for ?",
    answer: "Penalty for the driver and the owner and/ or seizure of vehicle",
    options: [
      "Penalty only",
      "Penalty for the driver and the owner and/ or seizure of vehicle",
      "A warning",
    ],
  },
  {
    numb: 2,
    question:
      "While parking your vehicle on a downward gradient, in addition to the application of hand brake, the gear engaged should be",
    answer: "In reverse",
    options: ["In neutral", "In first", "In reverse"],
  },
  {
    numb: 3,
    question:
      "On a road designated as one way, which of the following holds true?",
    answer: "Should not drive in reverse gear",
    options: [
      "Parking is prohibited",
      "Overtaking is prohibited",
      "Should not drive in reverse gear",
    ],
  },
  {
    numb: 4,
    question: "What happens if you are carrying overload in goods carriages?",
    answer: "Driving licence can be suspended or cancelled",
    options: [
      "It is not a punishable offence",
      "Only attracts a fine",
      "Driving licence can be suspended or cancelled",
    ],
  },
  {
    numb: 5,
    question:
      "When you reach an intersection where there is no signal light or a traffic police man, you should",
    answer:
      "Give way to the traffic approaching the intersection on your right side and proceed after giving necessary signals",
    options: [
      "Give way to traffic approaching the intersection from other roads",
      "Give proper signal, sound the horn and then proceed",
      "Give way to the traffic approaching the intersection on your right side and proceed after giving necessary signals",
    ],
  },
  // you can uncomment the below codes and make duplicate as more as you want to add question
  // but remember you need to give the numb value serialize like 1,2,3,5,6,7,8,9.....

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
    question: "If the road is marked with broken white lines, you",
    answer: "can change track, if required",
    options: [
      "shall not change track",
      "can change track, if required",
      "shall stop the vehicle",
    ],
  },

  {
    numb: 8,
    question: "What is the meaning of a blinking red traffic light?",
    answer: "Stop the vehicle and proceed if safe",
    options: [
      "Stop the vehicle till green light glows",
      "Stop the vehicle and proceed if safe",
      "Reduce speed and proceed",
    ],
  },

  {
    numb: 9,
    question: "Maximum permitted speed of a motor car on national highway is",
    answer: "70 km/hr",
    options: ["60 km/hr", "70 km/hr", "80 km/hr"],
  },

  {
    numb: 10,
    question:
      "Where is the number of passengers permitted to be taken in a private vehicle recorded?",
    answer: "Registration Certificate",
    options: ["Registration Certificate", "Tax Token", "Permit"],
  },

  {
    numb: 11,
    question: "Before starting the engine of a vehicle, you should",
    answer: "Check radiator water level and engine oil level",
    options: [
      "Check radiator water level and engine oil level",
      "Check headlight",
      "Check the brakes",
    ],
  },

  {
    numb: 12,
    question: "The maximum permissible speed of a light motor vehicle is",
    answer: "60 km/hr",
    options: ["60 km/hr", "70 km/hr", "No limit"],
  },

  {
    numb: 13,
    question:
      "According to Section 113 of the Motor Vehicle Act 1988, a driver should not drive a vehicle",
    answer: "Exceeding the weight permitted to carry",
    options: [
      "After consuming alcohol",
      "Exceeding the speed limit",
      "Exceeding the weight permitted to carry",
    ],
  },

  {
    numb: 14,
    question: "The middle lane is for",
    answer: "Traffic driving at 40km/hr",
    options: ["Overtaking", "Traffic driving at 40km/hr", "Two wheelers"],
  },

  {
    numb: 15,
    question: "You can overtake a vehicle in the front",
    answer: "From the right side of the vehicle",
    options: [
      "From the right side of the vehicle",
      "From the left side of the vehicle",
      "From the left side of the vehicle, if the road is wide",
    ],
  },
];