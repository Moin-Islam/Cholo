import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cholo/pages/dashboard.dart';
import 'package:dropdown_search/dropdown_search.dart';

class PickupLocation extends StatefulWidget {
  const PickupLocation({Key? key}) : super(key: key);

  @override
  State<PickupLocation> createState() => _PickupLocationState();
}

class _PickupLocationState extends State<PickupLocation> {
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

  Widget buildEnterClassTime() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter Your Class Time",
          style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.bold,
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
            value: selectedClassItem,
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
            style: const TextStyle(color: Colors.white),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                selectedClassItem = value!;
              });
            },
            items: classTimeItems.map<DropdownMenuItem<String>>((String value) {
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

  Widget buildBottomButtons() {
    return Row(
      children: [
        SizedBox(
          height: 60,
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              primary: Color(0xffEB5757),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );
            },
            child: Text(
              'Back',
              style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
        const SizedBox(
          width: 110,
        ),
        SizedBox(
          height: 60,
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              primary: Color(0xffEB5757),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
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


  Widget buildDropDownSearch () { 
    return DropdownSearch(
      items: ["Badda","Rampura","Dhanmondi","Mirpur","Gulistan","Motijheel","Gulshan","Hatirjheel"],
      popupProps: PopupProps.menu(
        showSearchBox: true,

        showSelectedItems: true,
        disabledItemFn: (String s) => s.startsWith("I")
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          enabledBorder: OutlineInputBorder(  
            borderSide: BorderSide(color :Color(0xffEB5757),width: 2.0 )
          ),
          labelText: "Select Location",
          hintText: "Select suitable pickup location"
        ),
      ),
      onChanged: print,
      selectedItem: "Badda",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  buildDropDownSearch(),
                  const SizedBox(
                    height: 30,
                  ),
                  buildMapImage(),
                  const SizedBox(
                    height: 30,
                  ),
                  // buildDetectLocationButton(),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              buildBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
