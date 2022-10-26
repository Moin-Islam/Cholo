import 'package:cholo/components/token_preference.dart';
import 'package:cholo/pages/accountsettings.dart';
import 'package:cholo/pages/driverprofile.dart';
import 'package:cholo/pages/paymentmethod.dart';
import 'package:cholo/pages/pickuplocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cholo/pages/messages.dart';
import 'package:cholo/pages/login.dart';
import 'package:page_transition/page_transition.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String selectedRide = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    TokenPreference.fetchAddress("vehicle").then((value) {
      setState(() {
        selectedRide = value!;
      });
    });
    print(selectedRide);
  }

  Widget buildTopLocationSection() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star_border_sharp, color: Colors.blue),
            Text("Badda"),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.black45,
          thickness: 5,
        ),
        Row(
          children: [
            Icon(Icons.star_border_sharp, color: Colors.blue),
            Text("Badda"),
          ],
        )
      ],
    );
  }

  Widget buildListItem(String vehical) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Color(0xff1f0112)),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: DriverProfile(),
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 300)));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    vehical == "Car" ? Icons.car_repair : Icons.motorcycle,
                    size: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "161611454",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Mr. X",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Messages(),
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 300)));
                          },
                          icon: Icon(Icons.message_outlined)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildActiveRiders() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "Active Riders from Your Location by Your Class Timing",
          style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Color(0xffFA0C20)),
        ),
        const SizedBox(
          height: 30,
        ),
        buildListItem(selectedRide),
        const SizedBox(
          height: 15,
        ),
        buildListItem(selectedRide),
        const SizedBox(
          height: 15,
        ),
        buildListItem(selectedRide),
        const SizedBox(
          height: 15,
        ),
        buildListItem(selectedRide),
        const SizedBox(
          height: 15,
        ),
        buildListItem(selectedRide),
        const SizedBox(
          height: 15,
        ),
        buildListItem(selectedRide),
        const SizedBox(
          height: 15,
        ),
        buildListItem(selectedRide),
      ],
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
                  PageTransition(
                      child: PaymentMethod(),
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 300)));
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
                MaterialPageRoute(builder: (context) => const AccountSetting()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipOval(child: Image.asset('images/profilepicture.jpg')),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: 30),
          child: Column(
            children: [
              buildActiveRiders(),
              const SizedBox(
                height: 30,
              ),
              buildBottomButtons()
            ],
          ),
        ),
      ),
    );
  }
}
