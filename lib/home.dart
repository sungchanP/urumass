import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String user = "Sungchan";
    return Container(
      padding: EdgeInsets.only(top: 20, left: 40),
      //decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Text(
        "Welcome, $user!",
        style: TextStyle(
          fontSize: 18),
      ),

    );
  }
}