import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  Widget buildTopLocationSection () {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star_border_sharp,color: Colors.blue),
            Text("Badda"),
          ],
        ),
        const SizedBox(height: 10,),
        Divider(
          color: Colors.black45,
          thickness: 5,
        ),
        Row(
          children: [
            Icon(Icons.star_border_sharp,color: Colors.blue),
            Text("Badda"),],
        )
      ],
    );
  }

  Widget buildActiveRiders() {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Text("Active Riders from Your Location by Your Class Timing",
        style: GoogleFonts.poppins(
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: Color(0xffEB5757)
        ),),
        const SizedBox(height: 30,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.red),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/car.png'),
                  ),
                  const SizedBox(width: 40,),
                  Column(
                    children: [
                      Text("161611454",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color : Colors.black
                      ),),
                      const SizedBox(height: 5,),
                      Text("Mr. X",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                      ),)
                    ],
                  ),
                  const SizedBox(width: 40,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                  const SizedBox(width: 10,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.red),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/car.png'),
                  ),
                  const SizedBox(width: 40,),
                  Column(
                    children: [
                      Text("161611454",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color : Colors.black
                      ),),
                      const SizedBox(height: 5,),
                      Text("Mr. X",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                      ),)
                    ],
                  ),
                  const SizedBox(width: 40,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                  const SizedBox(width: 10,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

   Widget buildBottomButtons() {
    return Row(
      children: [
        SizedBox(
      height: 60,
      width:100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          primary: Color(0xffEB5757),
        ),
        onPressed: () {},
        child: Text(
          'Back',
          style: GoogleFonts.rubik(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    ),
    const SizedBox(width: 110,),
    SizedBox(
      height: 60,
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          primary: Color(0xffEB5757),
        ),
        onPressed: () {},
        child: Text(
          'Next',
          style: GoogleFonts.rubik(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 30
        ),
        child: Column(
          
          children: [
              
              buildActiveRiders(),
              const SizedBox(height: 30,),
              buildBottomButtons()
          ],
        ),
      ) ,
    );
  }
}