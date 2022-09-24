import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_life/widgets/fadeinandout.dart';
import 'package:happy_life/widgets/loginbutton.dart';
import 'package:happy_life/widgets/textfield_up.dart';
import 'package:happy_life/constants/colorpallete.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _widgetvisibility = true;
  TextEditingController username_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowHideWidget(
              isShown: _widgetvisibility,
              child: Text(
                'Stop\nShaking',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            LoginButton(
              text: "Login",
              color: primaryColor[500]!,
              buttonPressed: () {
                setState(() {
                  _widgetvisibility = !_widgetvisibility;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            ShowHideWidget(
              isShown: _widgetvisibility,
              child: LoginButton(
                text: "Sign Up",
                color: primaryColor[900]!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
