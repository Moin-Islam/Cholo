import 'package:cholo/components/profile_widget.dart';
import 'package:cholo/components/user_preferences.dart';
import 'package:cholo/pages/accountsettings.dart';
import 'package:cholo/pages/paymentmethod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/numbers_widget.dart';
import '../components/user.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {

  Widget buildUserProfile (BuildContext context)
  {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(15),
          side: new BorderSide(color: Color(0xff1f0112),width: 1.0)
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: GestureDetector(  
                onTap: () {
                  
                },
                child: CircleAvatar(  
                  radius: 30,
                  backgroundImage: AssetImage("images/profilepicture.jpg"),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mr.x",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                ),),
                Text("Id : 1611204242",style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                ),),
                Text("Contact Number : 01911192111",style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                ),),
                Text("Total Completed Trip : 10",style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }


  Widget buildReviewSection () {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Color(0xff1f0112),width: 1.0)
        ),
        child: Column(
          children: [
            Text("Review",
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Colors.black
            ),),
            Container(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 20,
                    child: Material(  
                      child: Container(
                        height: 180.0,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.0),
                          boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0
                          )]
                        ),
                      ),
                  )),
                  Positioned(
                    top: 0,
                    left : 30,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(  
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 200,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Text("Very friendly driver",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                          ),),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        children: [
                          Text("Mr. X",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1f0112),
                          ),),
                          Text("Id : 1611912022",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff1f0112)
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildAppBar () {
    return AppBar(
      leading: BackButton(),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(onPressed : (() {
          
        }),
         icon: Icon(Icons.settings),)
      ],
    );
  }

  Widget buildName(User user) {
    return Column(
      children: [
        Text(
          user.name,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xff1f0112)
          ),
        ),
        const SizedBox(height: 4,),
        Text(
          user.id,
          style: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 15
          ),
        ),
      ],
    );
  }

  Widget buildReview(User user) {
    return Column(
        children: [
          Text(
            "Reviews",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff1f0112)
            ),
          ),
          const SizedBox(height: 16,),
          Text(
            user.review,
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              height: 1.4,
              color: Color(0xff1f0112)
            ),
          )
        ],
      );
  
  }

  Widget buildBottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              primary: Color(0xffFA0C20) ,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PaymentMethod()),
              );
            },
            child: Text(
              'Take The Ride',
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
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
      shadowColor: Colors.black,
      foregroundColor: Color(0xff1f0112),
      leading: BackButton(),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
      ],
    ),
      body: SingleChildScrollView(
        child: Container(  
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: 20
          ),
          child: Column(
              children: [
                buildAppBar(),
                ProfileWidget(
                  imagePath : user.imagePath,
                  onClicked : () {}
                ),
                const SizedBox(height: 24,),
                buildName(user),
                const SizedBox(height: 24,),
                NumbersWidget(),
                const SizedBox(height: 24,),
                buildReview(user),
                const SizedBox(height: 70,),
                buildBottomButtons()
              ],
          ),
        ),
      ),
    );
  }
}