import 'package:cholo/pages/successful.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpConfirmation extends StatefulWidget {
  const OtpConfirmation({Key? key}) : super(key: key);

  @override
  State<OtpConfirmation> createState() => _OtpConfirmationState();
}

class _OtpConfirmationState extends State<OtpConfirmation> {
  Widget buildTopText() {
    return RichText(
      text: TextSpan(
          text: "Enter the 4-digit code sent to you at \n ",
          style: GoogleFonts.poppins(
              fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: '+880 1711 256987',
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Color(0xffFA0C20)))
          ]),
      maxLines: 2,
    );
  }

  OtpFieldController otpController = OtpFieldController();

  Widget buildOtp() {
    return OTPTextField(
        controller: otpController,
        length: 4,
        width: MediaQuery.of(context).size.width,
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldWidth: 45,
        fieldStyle: FieldStyle.underline,
        style: TextStyle(fontSize: 17),
        onChanged: (pin) {
          print("Changed: " + pin);
        },
        onCompleted: (pin) {
          print("Completed: " + pin);
        });
  }

  Widget buildResendCode() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.only(right: 0),
      ),
      child: Text(
        'Resend Code',
        style: TextStyle(color: Color(0xffFA0C20), fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildNextButton() {
    return SizedBox(
      height: 60,
      width: 200,
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
            MaterialPageRoute(builder: (context) => const Successful()),
          );
        },
        child: Text(
          'Next',
          style: GoogleFonts.rubik(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  Widget buildBackButton() {
    return IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back));
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
                buildBackButton(),
                SizedBox(
                  height: 10,
                ),
                buildTopText(),
                SizedBox(
                  height: 20,
                ),
                buildOtp(),
                SizedBox(
                  height: 10,
                ),
                buildResendCode(),
                SizedBox(
                  height: 200,
                ),
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 60,
                    ),
                    buildNextButton(),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
