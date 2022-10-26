class Location {
  final List<String> locationItems = <String>[
    'Select Your Location',
    'Badda',
    'Rampura',
    'Gulshan',
    'Uttara',
  ];

  final List<String> classTimeItems = <String>[
    'Enter Your Class Time',
    '8:00 AM',
    '9:40 AM',
    '11:20 AM',
    '1:00 PM',
  ];

  var locations = {
    "Badda": ["Select sub zone","Link-Road", "Uttar Badda"],
    "Mohammadpur": [
      "Select sub zone",
      "Mohammadpur Bus Stand",
      "Town Hall",
      "Sir Sayed Road",
      "Tajmahal Road",
      "Nurjahan Road"
    ],
    "Gulshan": ["Select sub zone","Gulshan 1", "Gulshan 2"]
  };

  var charge = {
    "Badda": [
      {"area": "Link Road", "price": 150, "distance": 3.5,"car" : 350},
      {"area": "Uttar Badda", "price": 100, "distance": 1.5,"car" : 350}
    ],
    "Mohammadpur": [
      {"area": "Mohammadpur Bus Stand", "price": 250, "distance": 14,"car" : 350},
      {"area": "Town Hall", "price": 250, "distance": 14, "car" : 350},
      {"area": "Sir Sayed Road", "price": 230, "distance": 13.5, "car" : 350},
      {"area": "Tajmahal Road", "price": 250, "distance": 14.3, "car" : 350},
      {"area": "Nurjahan Road", "price": 220, "distance": 14.1, "car" : 350},
    ],
    "Gulshan": [
      {"area": "Gulshan 1", "price": 250, "distance": 14,"car" : 350},
      {"area": "Gulshan 2", "price": 250, "distance": 14, "car" : 350}
    ],
  };

  var area_location = ["Select sub zone","Link-Road", "Uttar Badda"];

}