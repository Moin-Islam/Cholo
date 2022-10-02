import 'package:cholo/pages/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class CreateAccountDriver extends StatefulWidget {
  const CreateAccountDriver({Key? key}) : super(key: key);

  @override
  State<CreateAccountDriver> createState() => _CreateAccountDriverState();
}

class _CreateAccountDriverState extends State<CreateAccountDriver> {
  TextEditingController studentIDControllerDriver = TextEditingController();
  TextEditingController usernameControllerDriver = TextEditingController();
  TextEditingController mobilenumberControllerDriver = TextEditingController();
  TextEditingController emailControllerDriver = TextEditingController();
  TextEditingController passwordControllerDriver = TextEditingController();
  TextEditingController confirmpasswordControllerDriver =
      TextEditingController();
  TextEditingController bloodgroupControllerDriver = TextEditingController();

  FilePickerResult? result;
  String? filename;
  PlatformFile? pickedfile;
  bool isloading = false;
  File? filetodisplay;

  Widget buildCholoImage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(),
        const SizedBox(
          width: 60,
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: Image(
            image: AssetImage('images/Cholo.png'),
          ),
        )
      ],
    );
  }

  Widget buildTopText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create Account",
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xffEB5757)),
        ),
        Text(
          "Fill in the form to proceed",
          style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Color(0xffEB5757)),
        ),
      ],
    );
  }

  Widget buildStudentIdStudentCreateAccount() {
    return TextFormField(
      controller: studentIDControllerDriver,
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color(0xff4BA7F3),
            width: 1,
          )),
          contentPadding: EdgeInsets.only(top: 14),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEB5757), width: 2.0),
          ),
          hintText: 'Student ID',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildUserNameStudentCreateAccount() {
    return TextFormField(
      controller: usernameControllerDriver,
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color(0xff4BA7F3),
            width: 1,
          )),
          contentPadding: EdgeInsets.only(top: 14),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEB5757), width: 2.0),
          ),
          hintText: 'User Name',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildMobileNumberStudentCreateAccount() {
    return TextFormField(
      controller: mobilenumberControllerDriver,
      keyboardType: TextInputType.phone,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color(0xff4BA7F3),
            width: 1,
          )),
          contentPadding: EdgeInsets.only(top: 14),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEB5757), width: 2.0),
          ),
          hintText: 'Phone Number',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildEmailStudentCreateAccount() {
    return TextFormField(
      controller: emailControllerDriver,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color(0xff4BA7F3),
            width: 1,
          )),
          contentPadding: EdgeInsets.only(top: 14),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEB5757), width: 2.0),
          ),
          hintText: 'Email',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildPasswordStudentCreateAccount() {
    return TextFormField(
      controller: passwordControllerDriver,
      obscureText: true,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff4BA7F3), width: 1),
          ),
          contentPadding: EdgeInsets.only(top: 14),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEB5757), width: 2.0),
          ),
          hintText: 'Password',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildConfirmPasswordStudentCreateAccount() {
    return TextFormField(
      controller: confirmpasswordControllerDriver,
      obscureText: true,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff4BA7F3), width: 1),
          ),
          contentPadding: EdgeInsets.only(top: 14),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEB5757), width: 2.0),
          ),
          hintText: 'Confrim Password',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildBloodGroupStudentCreateAccount() {
    return TextFormField(
      controller: bloodgroupControllerDriver,
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color(0xff4BA7F3),
            width: 1,
          )),
          contentPadding: EdgeInsets.only(top: 14),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEB5757), width: 2.0),
          ),
          hintText: 'Blood Group',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  void pickfile() async {
    try {
      setState(() {
        isloading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result != null) {
        filename = result!.files.first.name;
        pickedfile = result!.files.first;
        filetodisplay = File(pickedfile!.path.toString());
        print(filename);
      }

      setState(() {
        isloading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  Widget FilePickTextButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
            onPressed: () {
              pickfile();
            },
            child: Text(
              "Upload Documents",
              style: GoogleFonts.poppins(fontSize: 17),
            )),
        if (pickedfile != null)
          SizedBox(
            height: 200,
            width: 200,
            child: Image.file(filetodisplay!),
          ),
      ],
    );
  }

  Widget buildTermsAndCondition() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(),
        SizedBox(
          width: 20,
        ),
        Text(
          "By tapping the button below, you agree to\nCholo's terms of Use and acknowledge that\nyou have read the Privacy Policy",
          style: GoogleFonts.roboto(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Color(0xff999999)),
        )
      ],
    );
  }

  Widget buildCreateAccountButton() {
    return SizedBox(
      height: 60,
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          primary: Color(0xffEB5757),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const OtpConfirmation()),
          );
        },
        child: Text(
          'Create Account',
          style: GoogleFonts.rubik(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCholoImage(),
              buildTopText(),
              buildStudentIdStudentCreateAccount(),
              buildUserNameStudentCreateAccount(),
              buildMobileNumberStudentCreateAccount(),
              buildEmailStudentCreateAccount(),
              buildPasswordStudentCreateAccount(),
              buildConfirmPasswordStudentCreateAccount(),
              buildBloodGroupStudentCreateAccount(),
              FilePickTextButton(),
              buildTermsAndCondition(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(),
                  SizedBox(
                    width: 60,
                  ),
                  buildCreateAccountButton()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
