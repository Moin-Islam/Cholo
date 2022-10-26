import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cholo/pages/login.dart';
import 'package:page_transition/page_transition.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  Widget buildCholoImage() {
    return SizedBox(
      height: 500,
      width: 400,
      child: Image(
        image: AssetImage('images/Cholo.png'),
      ),
    );
  }

  Widget buildGetStartedButton() {
    return SizedBox(
      height: 60,
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          primary: Color(0xffFA0C20),
        ),
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(child: Login(), type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 300))
          );
        },
        child: Text(
          'Get Started',
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container (  
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: 30
          ),
          child: Column(
            children: [
              buildCholoImage(),
              const SizedBox(height: 10,),
              buildGetStartedButton()
            ],
          ),
        ),
      ),
    );
  }
}