import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urumass/screens/signinPage/login.dart';
import 'package:urumass/screens/signinPage/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UrUmass',
      theme: ThemeData(
        //brightness: Brightness.light,
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),

      home: WelcomePage(),
    );
  }
}