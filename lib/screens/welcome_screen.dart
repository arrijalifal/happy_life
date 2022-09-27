import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_life/widgets/fadeinandout.dart';
import 'package:happy_life/widgets/loginbutton.dart';
import 'package:happy_life/constants/colorpallete.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _signupvisibility = true;
  bool _textfieldshown = false;
  bool _isTextEmpty = true;

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
      width: 3,
      color: Color(0xff939393),
    ),
  );
  TextEditingController _signature = TextEditingController();
  Future<bool> _onWillPop() async {
    if (_textfieldshown) {
      setState(() {
        _textfieldshown = !_textfieldshown;
      });
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Happy\nLife',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Stack(
                    children: [
                      Center(
                        child: ShowHideWidget(
                          isShown: _signupvisibility,
                          child: LoginButton(
                            text: "Sign Up",
                            color: primaryColor[900]!,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: ShowHideWidget(
                          isShown: _textfieldshown,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                if (value.isEmpty) {
                                  _isTextEmpty = true;
                                } else {
                                  _isTextEmpty = false;
                                }
                              });
                            },
                            enabled: _textfieldshown,
                            controller: _signature,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffE7E7E7),
                              isDense: true,
                              // contentPadding: EdgeInsets.only(left: 20),
                              enabledBorder: _outlineInputBorder,
                              focusedBorder: _outlineInputBorder,
                              hintText: "Enter your signature key...",
                              hintStyle: GoogleFonts.poppins(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              LoginButton(
                text: "Login",
                color: primaryColor[500]!,
                buttonPressed: (_textfieldshown)
                    ? (_isTextEmpty)
                        ? null
                        : () {
                            Timer(const Duration(milliseconds: 500), () {
                              Navigator.pushNamed(context, '/dashboard', arguments: _signature.text);
                            });
                          }
                    : () {
                        Timer(const Duration(milliseconds: 500), () {
                          setState(() {
                            _textfieldshown = !_textfieldshown;
                          });
                        });
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
