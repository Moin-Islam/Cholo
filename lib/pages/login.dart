import 'package:cholo/pages/createAccountDriver.dart';
import 'package:cholo/pages/dashboard.dart';
import 'package:cholo/pages/pickuplocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameControllerStudent = TextEditingController();
  TextEditingController passwordControllerLogin = TextEditingController();

  Widget buildUserNameStudentCreateAccount() {
    return TextFormField(
      controller: usernameControllerStudent,
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
          prefixIcon: Icon(
            Icons.email,
            color: Colors.black,
          ),
          hintText: 'Email',
          hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildPasswordLogin() {
    return TextFormField(
      controller: passwordControllerLogin,
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
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.black,
          ),
          hintText: 'Password',
          hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 15,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget buildForgetPasswordLogin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(right: 0),
          ),
          child: Text(
            'Forgot your Password?',
            style: GoogleFonts.poppins(
                color: Colors.black45,
                fontWeight: FontWeight.normal,
                fontSize: 15),
          ),
        )
      ],
    );
  }

  Widget buildCombatButton() {
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
            MaterialPageRoute(builder: (context) => const PickupLocation()),
          );
        },
        child: Text(
          'Sign In',
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  Widget buildWelcomeBack() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Welcome Back!",
          style: GoogleFonts.poppins(
            color: Color(0xffEB5757),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Hi, Kindly login to continue",
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    );
  }

  Widget buildCholoImage() {
    return SizedBox(
      height: 200,
      width: 400,
      child: Image(
        image: AssetImage('images/Cholo.png'),
      ),
    );
  }

  Widget buildConnectWith() {
    return Column(
      children: [
        Text("Connect With:"),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton.mini(
              buttonType: ButtonType.google,
              onPressed: () {},
            ),
            SignInButton.mini(
              buttonType: ButtonType.facebook,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget buildCreateAccount() {
    return Column(
      children: [
        Text("Don't have an Account?"),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateAccountDriver()),
            );
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(right: 0),
          ),
          child: Text(
            'Create Account',
            style: GoogleFonts.poppins(
                color: Color(0xff4BA7F3), fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: 30),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCholoImage(),
                  SizedBox(
                    height: 30,
                  ),
                  buildWelcomeBack(),
                  SizedBox(
                    height: 15,
                  ),
                  buildUserNameStudentCreateAccount(),
                  SizedBox(
                    height: 15,
                  ),
                  buildPasswordLogin(),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        buildForgetPasswordLogin(),
                      ]),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCombatButton(),
                  SizedBox(
                    height: 30,
                  ),
                  buildConnectWith(),
                  SizedBox(
                    height: 30,
                  ),
                  buildCreateAccount(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
