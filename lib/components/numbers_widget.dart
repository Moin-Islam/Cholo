import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  Widget buildButton(BuildContext context, String value, String text) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: () {
        
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            value,
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 17),
            ),
          SizedBox(height: 2,),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
      
    );
  }

  Widget buildDivider() {
    return Container(
      height: 24,
      child: VerticalDivider(
        color: Colors.black,
        thickness: 1,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '4/5','Rating'),
          buildDivider(),
          SizedBox(width: 10,),
          buildButton(context, 'DHK Metro G 15-0568','Toyota Probox'),
        ],
      ),
    );
  }
}