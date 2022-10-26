import 'package:cholo/components/token_preference.dart';
import 'package:cholo/pages/login.dart';
import 'package:cholo/pages/pickuplocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<PaymentSuccessful> {
late String carprice ;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    TokenPreference.fetchAddress("price").then((value) {
      setState(() {
        carprice = value!;
      });
    });
  }

  

   Widget buildShowPayment() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: 100
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.white,
            offset: Offset(1, -1),
            blurRadius: 1.0,
            spreadRadius: 1.0
          )
        ]),
        alignment: Alignment.center,
        
        child: Text(  
        carprice + "Tk",
        style: GoogleFonts.poppins(
          fontSize:50 ,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
      ),
    );
  }
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
          primary: Color(0xffFA0C20),
        ),
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(child: PickupLocation(), type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 300))
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
            buildShowPayment(),
            SizedBox(
              height: 50,
            ),
            RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "Successfully Paid the Bill",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff333333),
                  )
                ),
                WidgetSpan(
                  child: Icon(Icons.check,
                  size: 30,
                  color: Colors.green,) 
                  )
              ]
            )),
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
