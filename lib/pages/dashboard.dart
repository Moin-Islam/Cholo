import 'package:cholo/pages/paymentmethod.dart';
import 'package:cholo/pages/pickuplocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cholo/pages/messages.dart';
import 'package:cholo/pages/login.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
          border: Border.all(width: 2, color: Colors.red),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PaymentMethod()),
              );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    vehical == "car" ? Icons.car_repair : Icons.motorcycle,
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
                              MaterialPageRoute(
                                  builder: (context) => const Messages()),
                            );
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
              color: Color(0xffEB5757)),
        ),
        const SizedBox(
          height: 30,
        ),
        buildListItem("car"),
        const SizedBox(
          height: 15,
        ),
        buildListItem("motorcycle"),
        const SizedBox(
          height: 15,
        ),
        buildListItem("motorcycle"),
        const SizedBox(
          height: 15,
        ),
        buildListItem("car"),
        const SizedBox(
          height: 15,
        ),
        buildListItem("motorcycle"),
        const SizedBox(
          height: 15,
        ),
        buildListItem("motorcycle"),
        const SizedBox(
          height: 15,
        ),
        buildListItem("motorcycle"),
      ],
    );
  }

  Widget buildBottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              primary: Color(0xffEB5757),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
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
        SizedBox(
          height: 50,
          width: 80,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              primary: Color(0xffEB5757),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PaymentMethod()),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
