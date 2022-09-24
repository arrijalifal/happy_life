import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_life/widgets/loginbutton.dart';
import 'package:happy_life/widgets/textfield_up.dart';
import 'package:happy_life/constants/colorpallete.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController username_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stop\nShaking',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            LoginButton(text: "Login", color: primaryColor[500]!,),
            SizedBox(
              height: 10,
            ),
            LoginButton(text: "Sign Up", color: primaryColor[900]!,),
          ],
        ),
      ),
    );
  }
}
