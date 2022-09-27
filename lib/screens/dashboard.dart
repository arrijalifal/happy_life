import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_life/constants/colorpallete.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    int persen = 47;
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      key: _key,
      drawer: const Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 47),
        top: true,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      _key.currentState?.openDrawer();
                    },
                    color: Colors.black,
                  ),
                  Text(
                    "Dashboard",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Your Progress",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 125,
                              height: 125,
                              child: CircularProgressIndicator(
                                value: persen / 100,
                                strokeWidth: 15,
                                color: successColor[600],
                                backgroundColor: Colors.grey.shade200,
                              ),
                            ),
                            Text(
                              "$persen%",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
