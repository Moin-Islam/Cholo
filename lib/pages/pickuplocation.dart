import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

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
    'Badda',
    'Rampura',
    'Gulshan',
    'Uttara',
  ];

  String? selectedItem = 'Select Your Location';

  String? selectedClassItem = 'Enter Your Class Time';

  Widget buildCholoImage() {
    return SizedBox(
      height: 200,
      width: 400,
      child: Image(
        image: AssetImage('images/Cholo.png'),
      ),
    );
  }

  Widget buildSelectLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Enter Your Location",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          fontSize: 17,
          color: Color(0xffEB5757)
        ),),
        const SizedBox(height: 10,),
        Container(
          height: 50,
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEB5757),
          ),
          child: DropdownButton<String>(
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
            style: GoogleFonts.poppins(color: Colors.white,fontSize: 15),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                selectedItem = value!;
              });
            },
            items: locationItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Center(child: Text(value,textAlign: TextAlign.center,)),
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  Widget buildDetectLocationButton() {
    return SizedBox(
      height: 60,
      width: 300,
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
        Text("Enter Your Class Time",
        style: GoogleFonts.poppins(
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: Color(0xffEB5757)
        ),),
        const SizedBox(height: 10,),
        Container(
          height: 50,
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEB5757),
          ),
          child: DropdownButton<String>(
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
                selectedItem = value!;
              });
            },
            items: classTimeItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
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
      width:100,
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
          'Back',
          style: GoogleFonts.rubik(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    ),
    const SizedBox(width: 110,),
    SizedBox(
      height: 60,
      width: 100,
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
          'Next',
          style: GoogleFonts.rubik(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    )
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCholoImage(),
            buildSelectLocation(),
            buildDetectLocationButton(),
            buildEnterClassTime(),
            buildBottomButtons(),
          ],
        ),
      ),
    );
  }
}
