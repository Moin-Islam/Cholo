import 'package:cholo/pages/createAccountDriver.dart';
import 'package:cholo/pages/createAccountStudent.dart';
import 'package:cholo/pages/dashboard.dart';
import 'package:cholo/pages/getstarted.dart';
import 'package:cholo/pages/login.dart';
import 'package:cholo/pages/otp.dart';
import 'package:cholo/pages/paymentmethod.dart';
import 'package:cholo/pages/pickuplocation.dart';
import 'package:cholo/pages/successful.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cholo/pages/messages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cholo",
      theme: ThemeData(
        // Define the default brightness and colors.
        /*brightness: Brightness.dark,*/
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xffEB5757),
        ),
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        /*textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),*/
      ),
      home: const MyHomePage(
        title: "Cholo",
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController mobilenumberControllerSignUp1 =
        TextEditingController();

    final List<String> locationItems = <String>[
      'Select Pickup Point',
      'Badda',
      'Rampura',
      'Gulshan',
      'Uttara',
    ];

    String? selectedItem = 'Select Pickup Point';

    OtpFieldController otpController = OtpFieldController();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Successful();

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
