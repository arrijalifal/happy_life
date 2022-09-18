import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class InputUsernamePassword extends StatelessWidget {
  final controller;
  final String label;
  Color bordercolor;
  Color? textcolor;
  
  InputUsernamePassword({
    Key? key,
    required this.controller,
    required this.label,
    required this.bordercolor,
    this.textcolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      controller: controller,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: bordercolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: bordercolor),
        ),
      ),
    );
  }
}
