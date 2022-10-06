import 'package:cholo/pages/paymentsuccessful.dart';
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
  Widget buildTextSection() {
    return Text(
      "Select your preferred payment method",
      style: GoogleFonts.poppins(
          fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black),
    );
  }

  Widget buildbKashPaymentBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PaymentSuccessful()),
          );
      },
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            children: [
              Image.asset(
                "images/bkash.png",
                height: 60,
                width: 60,
              ),
              Text(
                'Bkash',
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              )
            ],
          )),
    );
  }

  Widget buildnagadPaymentBtn() {

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PaymentSuccessful()),
          );
      },
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            children: [
              Image.asset(
                "images/nagad.png",
                height: 60,
                width: 60,
              ),
              Text(
                'Nagad',
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              )
            ],
          )),
    );
  }

  Widget buildCreditCardPaymentBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PaymentSuccessful()),
          );
      },
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset(
                  "images/creditcard.png",
                  height: 40,
                  width: 40,
                ),
              ),
              Text(
                'Credit or Decit Card (SSL)',
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              )
            ],
          )),
    );
  }

  Widget buildCashPaymentBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PaymentSuccessful()),
          );
      },
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  "images/cash.png",
                  height: 40,
                  width: 40,
                ),
              ),
              Text(
                'Cash',
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 100),
        child: Container(
          child: Column(
            children: [
              buildTextSection(),
              SizedBox(
                height: 20,
              ),
              buildCreditCardPaymentBtn(),
              SizedBox(
                height: 20,
              ),
              buildbKashPaymentBtn(),
              SizedBox(
                height: 20,
              ),
              buildnagadPaymentBtn(),
              SizedBox(
                height: 20,
              ),
              buildCashPaymentBtn()
            ],
          ),
        ),
      ),
    );
  }
}
