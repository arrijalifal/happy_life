import 'package:flutter/material.dart';
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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Login!",
                  style: TextStyle(
                    color: color2,
                    fontSize: 50,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InputUsernamePassword(
                      controller: username_controller,
                      label: "Username",
                      bordercolor: color2,
                      textcolor: color2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputUsernamePassword(
                      controller: password_controller,
                      label: "Password",
                      bordercolor: color2,
                      textcolor: color2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
