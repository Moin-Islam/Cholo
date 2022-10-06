import 'package:cholo/pages/login.dart';
import 'package:cholo/pages/pickuplocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<PaymentSuccessful> {
  Widget buildSuccessfulImage() {
    return SizedBox(
      height: 500,
      width: 400,
      child: Image(
        image: AssetImage('images/successful.png'),
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
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          primary: Color(0xffEB5757),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PickupLocation()),
          );
        },
        child: Text(
          'Go Again!',
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            buildSuccessfulImage(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Successfully Paid the Bill",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff333333)),
            ),
            SizedBox(
              height: 20,
            ),
            buildGetStartedButton()
          ],
        ),
      ),
    );
  }
}
