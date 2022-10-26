import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class AccountSetting extends StatefulWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {

  TextEditingController studentIDControllerStudent = TextEditingController();
  TextEditingController usernameControllerStudent = TextEditingController();
  TextEditingController mobilenumberControllerStudent = TextEditingController();
  TextEditingController emailControllerStudent = TextEditingController();
  TextEditingController passwordControllerStudent = TextEditingController();
  TextEditingController confirmpasswordControllerStudent =
      TextEditingController();
  TextEditingController bloodgroupControllerStudent = TextEditingController();

  FilePickerResult? result;
  String? filename;
  PlatformFile? pickedfile;
  bool isloading = false;
  File? filetodisplay;

  Widget buildUserProfile (BuildContext context)
  {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(15),
          side: new BorderSide(color: Color(0xffFA0C20) ,width: 1.0)
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: GestureDetector(  
                onTap: () {
                  
                },
                child: CircleAvatar(  
                  radius: 30,
                  backgroundImage: AssetImage("images/profilepicture.jpg"),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mr.x",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                ),),
                Text("Id : 1611204242",style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildStudentIdStudentCreateAccount() {
    return TextFormField(
      controller: studentIDControllerStudent,
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
      controller: usernameControllerStudent,
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
          hintText: 'User Name',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildMobileNumberStudentCreateAccount() {
    return TextFormField(
      controller: mobilenumberControllerStudent,
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
          hintText: 'Phone Number',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildEmailStudentCreateAccount() {
    return TextFormField(
      controller: emailControllerStudent,
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
          hintText: 'Email',
          hintStyle: GoogleFonts.poppins(
              color: Color(0xff1A1A1A),
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildPasswordStudentCreateAccount() {
    return TextFormField(
      controller: passwordControllerStudent,
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
      controller: confirmpasswordControllerStudent,
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
      controller: emailControllerStudent,
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

  Widget filePickTextButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start  ,
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

  Widget buildSaveChangeButton() {
    return SizedBox(
      height: 60,
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: EdgeInsets.all(5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          primary: Color(0xffFA0C20) ,
        ),
        onPressed: () {},
        child: Text(
          'Save Changes',
          style: GoogleFonts.rubik(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      shadowColor: Colors.black,
      foregroundColor: Color(0xff1f0112),
      leading: BackButton(),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
      body: SingleChildScrollView(  
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width *0.1,
            vertical: 20
          ),
          child: Column(
              children: [
                buildUserProfile(context),
                SizedBox(height: 10,),
                buildUserNameStudentCreateAccount(),
                SizedBox(height: 10,),
                buildStudentIdStudentCreateAccount(),
                SizedBox(height: 10,),
                buildMobileNumberStudentCreateAccount(),
                SizedBox(height: 10,),
                buildEmailStudentCreateAccount(),
                SizedBox(height: 10,),
                buildPasswordStudentCreateAccount(),
                SizedBox(height: 10,),
                buildConfirmPasswordStudentCreateAccount(),
                SizedBox(height: 10,),
                buildBloodGroupStudentCreateAccount(),
                SizedBox(height: 10,),
                filePickTextButton(),
                SizedBox(height: 10,),
                Row(
                children: [
                  Container(),
                  SizedBox(width: 60,),
                  buildSaveChangeButton()
                ],
              )
              ],
          ),
        ),
      ),
        );}
}