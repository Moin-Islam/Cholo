import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {

  Widget buildDoLaterBtn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(right: 0),
          ),
          child: Text(
            'Do This Later',
            style: GoogleFonts.roboto(
                color: Color(0xff535AFF),
                fontWeight: FontWeight.normal,
                fontSize: 20),
          ),
        )
      ],
    );
  }

  Widget buildTextSection () {
    return Text("Select your preferred payment method",
    style: GoogleFonts.poppins(
      fontSize: 17,
      fontWeight: FontWeight.normal,
      color: Colors.black
    ),);
  }
  
  Widget buildPaymentBtn() {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          primary: Colors.white,
        ),
        onPressed: () {},
        icon: Image.asset("images/bkash.png"),
        label: Text(
          'Bkash',
          style: GoogleFonts.rubik(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.normal),
        )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: 100
        ),
        child: Container(
          child: Column(
            children: [
              buildDoLaterBtn(),
              buildTextSection(),
              buildPaymentBtn()
            ],

          ),
        ),
      ),
    );
  }
}