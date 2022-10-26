import 'package:cholo/components/token_preference.dart';
import 'package:cholo/pages/accountsettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cholo/pages/dashboard.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PickupLocation extends StatefulWidget {
  const PickupLocation({Key? key}) : super(key: key);

  @override
  State<PickupLocation> createState() => _PickupLocationState();
}

class _PickupLocationState extends State<PickupLocation> {
  final List<String> rideOption = <String>['Select vehicle', 'Car', 'Bike'];
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
    "Badda": ["Select sub zone", "Link-Road", "Uttar Badda"],
    "Mohammadpur": [
      "Select sub zone",
      "Mohammadpur Bus Stand",
      "Town Hall",
      "Sir Sayed Road",
      "Tajmahal Road",
      "Nurjahan Road"
    ],
    "Gulshan": ["Select sub zone", "Gulshan 1", "Gulshan 2"]
  };

  var charge = {
    "Badda": [
      {"area": "Link Road", "Bike": 150, "distance": 3.5, "Car": 350},
      {"area": "Uttar Badda", "Bike": 100, "distance": 1.5, "Car": 350}
    ],
    "Mohammadpur": [
      {
        "area": "Mohammadpur Bus Stand",
        "Bike": 250,
        "distance": 14,
        "Car": 350
      },
      {"area": "Town Hall", "Bike": 250, "distance": 14, "Car": 350},
      {"area": "Sir Sayed Road", "Bike": 230, "distance": 13.5, "Car": 350},
      {"area": "Tajmahal Road", "Bike": 250, "distance": 14.3, "Car": 350},
      {"area": "Nurjahan Road", "Bike": 220, "distance": 14.1, "Car": 350},
    ],
    "Gulshan": [
      {"area": "Gulshan 1", "Bike": 250, "distance": 14, "Car": 350},
      {"area": "Gulshan 2", "Bike": 250, "distance": 14, "Car": 350}
    ],
  };

  var area_location = ["Select sub zone", "Link-Road", "Uttar Badda"];

  String selectVehicle = "";

  String selectedArea = "";
  String selectedSubArea = "";
  String totalCarPrice = "";
  String totalCharge = "";
  String? selectedItem = 'Select Your Location';

  String? selectedClassItem = 'Enter Your Class Time';

  Widget buildMapImage() {
    return SizedBox(
      height: 200,
      width: 400,
      child: Image(
        image: AssetImage('images/map.jpg'),
      ),
    );
  }

  Widget buildSelectLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter Your Location",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color(0xffEB5757)),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEB5757),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            value: selectedItem,
            icon: const Icon(
              Icons.arrow_downward,
              color: Colors.white,
            ),
            underline: Container(
              height: 1,
              color: Color(0xffEB5757),
            ),
            elevation: 16,
            dropdownColor: Color(0xffEB5757),
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                selectedItem = value!;
              });
            },
            items: locationItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Center(
                    child: Text(
                  value,
                  textAlign: TextAlign.center,
                )),
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  Widget buildDetectLocationButton() {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          primary: Color(0xffEB5757),
        ),
        onPressed: () {},
        child: Text(
          'Auto Detect Location',
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  Widget buildDetectBtn() {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          primary: Color(0xffFA0C20),
        ),
        onPressed: () {
          
        },
        child: Text(
          'Auto Detect Location',
          style: GoogleFonts.rubik(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  Widget buildBottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 50,
          width: 80,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              primary: Color(0xffFA0C20),
            ),
            onPressed: () {
              Navigator.push(
            context,
            PageTransition(child: Dashboard(), type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 300))
          );
            },
            child: Text(
              'Next',
              style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.normal),
            ),
          ),
        )
      ],
    );
  }

  /*final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  late SingleValueDropDownController _cnt;
  late MultiValueDropDownController _cntMulti;*/

  Widget buildDropDownSearch() {
    return DropdownSearch(
      items: ["Select your pickup location", "Badda", "Mohammadpur", "Gulshan"],
      popupProps: PopupProps.menu(
          showSearchBox: true,
          showSelectedItems: true,
          disabledItemFn: (String s) => s.startsWith("I")),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFA0C20), width: 2.0)),
            labelText: "Select Location",
            hintText: "Select suitable pickup location"),
      ),
      onChanged: (value) {
        setState(() {
          selectedArea = value.toString();
        });

        setState(() {
          area_location = locations[value]!;
        });

        setState(() {
          totalCharge = "";
        });

        setState(() {
          totalCarPrice = "";
        });
      },
      selectedItem: "Select your pickup location",
    );
  }

  Widget buildRideSelect() {
    return DropdownSearch(
      items: ['Select vehicle', 'Car', 'Bike'],
      popupProps: PopupProps.menu(
          showSearchBox: true,
          showSelectedItems: true,
          disabledItemFn: (String s) => s.startsWith("I")),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFA0C20), width: 2.0)),
          labelText: "Select Vehicle",
        ),
      ),
      onChanged: (value) {
        setState(() {
          selectVehicle = value.toString();
        });

        List temp = charge[selectedArea]!;

        for (var i = 0; i < temp.length; i++) {
          // TO DO
          setState(() {
            totalCharge = temp[i][selectVehicle].toString();
          });

          TokenPreference.saveAddress("price", totalCharge);
          TokenPreference.saveAddress("vehicle", selectVehicle);
        }
      },
      selectedItem: "Select vehicle",
    );
  }

  Widget buildNestedDropDownSearch() {
    return DropdownSearch(
      items: area_location,
      popupProps: PopupProps.menu(
          showSearchBox: true,
          showSelectedItems: true,
          disabledItemFn: (String s) => s.startsWith("I")),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFA0C20), width: 2.0)),
            labelText: "Select Location",
            hintText: "Select suitable pickup location"),
      ),
      onChanged: (value) {
        setState(() {
          selectedSubArea = value.toString();
        });
      },
      selectedItem: area_location[0],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.black,
          foregroundColor: Color(0xff1f0112),
          leading: BackButton(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountSetting()),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child:
                    ClipOval(child: Image.asset('images/profilepicture.jpg')),
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  buildDropDownSearch(),
                  const SizedBox(
                    height: 20,
                  ),

                  buildNestedDropDownSearch(),
                  SizedBox(
                    height: 15,
                  ),
                  buildRideSelect(),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        totalCharge == ""
                            ? ""
                            : "Charge: " + totalCharge + " BDT",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildDetectBtn(),
                  SizedBox(
                    height: 20,
                  ),
                  buildMapImage(),
                  const SizedBox(
                    height: 20,
                  ),
                  // buildDetectLocationButton(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              buildBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
