import 'package:cholo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


class Component extends StatefulWidget {
  const Component({Key? key}) : super(key: key);

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {

  TextEditingController emailControllerLogin = TextEditingController();
  TextEditingController passwordControllerLogin = TextEditingController();

  TextEditingController mobilenumberControllerSignUp1 = TextEditingController();

  TextEditingController studentIDControllerStudent = TextEditingController();
  TextEditingController usernameControllerStudent = TextEditingController();
  TextEditingController mobilenumberControllerStudent = TextEditingController();
  TextEditingController emailControllerStudent = TextEditingController();
  TextEditingController passwordControllerStudent = TextEditingController();
  TextEditingController confirmpasswordControllerStudent = TextEditingController();
  TextEditingController bloodgroupControllerStudent = TextEditingController();

  TextEditingController studentIDControllerDriver = TextEditingController();
  TextEditingController usernameControllerDriver = TextEditingController();
  TextEditingController mobilenumberControllerDriver = TextEditingController();
  TextEditingController emailControllerDriver = TextEditingController();
  TextEditingController passwordControllerDriver = TextEditingController();
  TextEditingController confirmpasswordControllerDriver = TextEditingController();
  TextEditingController bloodgroupControllerDriver = TextEditingController();

  final List<String> locationItems = [
    'Badda',
    'Rampura',
    'Gulshan',
    'Uttara',
  ];

  final List<String> Menuitems = [
    'Item1',
    'Item2',
    'Item3',
  ];

  String? selectedValue;

  final _formKey = GlobalKey<FormState>();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  Widget buildGetStartedButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      height: 58,
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: RaisedButton(
        elevation: 5,
        onPressed:print("aaa") ,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xffEB5757),
        child:  Text(
                'Get Started',
                style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
      ),
    );
  }

  Widget buildEmailLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: emailControllerLogin,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildPasswordLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: passwordControllerLogin,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff800080), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildForgetPasswordLogin () {
    return Column(children: [
      FlatButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) =>  ),
                    (Route<dynamic> route) => false);
              },
              padding: EdgeInsets.only(right: 0),
              child: Text(
                'Forgot your Password?',
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.normal),
              ),
            )
    ],);
  }

  Widget buildLetsCombatButtonLogin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: RaisedButton(
        elevation: 5,
        onPressed:print("aaa") ,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xffEB5757),
        child:  Text(
                'Let*\'s Combat',
                style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
      ),
    );
  }

  Widget buildCreateAccountLogin () {
    return Column(children: [
      FlatButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) =>  ),
                    (Route<dynamic> route) => false);
              },
              padding: EdgeInsets.only(right: 0),
              child: Text(
                'Create Account',
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.normal),
              ),
            )
    ],);
  }

  Widget EnterPhoneNumberSignup1 () {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: mobilenumberControllerSignUp1,
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                
          ),
        ),)
      ],
    );
  }

  Widget buildExistingAccountSignUp1 () {
    return Column(children: [
      FlatButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) =>  ),
                    (Route<dynamic> route) => false);
              },
              padding: EdgeInsets.only(right: 0),
              child: Text(
                'Already have an account ?',
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.normal),
              ),
            )
    ],);
  }

  Widget buildNextButton () {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: RaisedButton(
        elevation: 5,
        onPressed:print("aaa") ,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xffEB5757),
        child:  Text(
                'Next',
                style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
      ),
    );
  }
  
  Widget buildOTPfieldSignUp3 () {
    return OTPTextField(
      length: 4,
      width: double.infinity,
      fieldWidth: 280,
      style: TextStyle( 
        fontSize: 17,
      ),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
       print("Completed: " + pin);
  },
    );
  }

  Widget buildResendCodeSignUp3 () {
    return Column(children: [
      FlatButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) =>  ),
                    (Route<dynamic> route) => false);
              },
              padding: EdgeInsets.only(right: 0),
              child: Text(
                'Resend Code',
                style: TextStyle(
                    color: Color(0xffEB5757), fontWeight: FontWeight.normal),
              ),
            )
    ],);
  }

  Widget buildMenuButtonPickupPoint () {
    return DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              Icon(
                Icons.list,
                size: 16,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 4,
              ),
            ],
          ),
          items: Menuitems
                  .map((item) =>
                  DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
                  .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          /*icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.yellow,
          iconDisabledColor: Colors.grey,*/
          buttonHeight: 50,
          buttonWidth: 160,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.redAccent,
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 200,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.redAccent,
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      );
  }

  Widget buildDropdownPickupPoint () {
    return DropdownButtonFormField2(
              decoration: InputDecoration(
                //Add isDense true and zero Padding.
                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                //Add more decoration as you want here
                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
              ),
              isExpanded: true,
              hint: const Text(
                'Select Your Gender',
                style: TextStyle(fontSize: 14),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 30,
              buttonHeight: 60,
              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              items: locationItems
                      .map((item) =>
                      DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                      .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select your pick up point';
                }
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
            );
  }



  Widget buildStudentIdStudentCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: studentIDControllerStudent,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                hintText: 'Student ID',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }


  Widget buildUserNameStudentCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: usernameControllerStudent,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                hintText: 'User Name',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }


  Widget buildMobileNumberStudentCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: mobilenumberControllerStudent,
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                hintText: 'Phone Number',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildEmailStudentCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: emailControllerStudent,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }


  Widget buildPasswordStudentCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: passwordControllerStudent,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff800080), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }


  Widget buildConfirmPasswordStudentCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: confirmpasswordControllerStudent,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff800080), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildBloodGroupStudentCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: bloodgroupControllerStudent,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Blood Group',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }






  Widget buildStudentIdDriverCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: studentIDControllerDriver,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                hintText: 'Student ID',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }


  Widget buildUserNameDriverCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: usernameControllerDriver,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                hintText: 'User Name',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }


  Widget buildMobileNumberDriverCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: mobilenumberControllerDriver,
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                hintText: 'Phone Number',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildEmailDriverCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: emailControllerDriver,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }


  Widget buildPasswordDriverCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: passwordControllerDriver,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff800080), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }


  Widget buildConfirmPasswordDriverCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: confirmpasswordControllerDriver,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff800080), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildBloodGroupDriverCreateAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 48,
          child: TextFormField(
            controller: bloodgroupControllerDriver,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB5757), width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Blood Group',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }







  Widget build(BuildContext context) {
    return Scaffold();  
  }
}