import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urumass/screens/account.dart';
import 'package:urumass/screens/class.dart';
import 'package:urumass/screens/wall.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions=[
    MainHome(),
    Wall(),
    Class(),
    Account(),
  ];

  void ontapItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 40,
      //   title: Align(
      //     alignment: Alignment.centerLeft,
      //     child: const Text(
      //       "UrUmass", 
      //       style: TextStyle(
      //         color: Colors.black
      //         ),
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   // shape: Border(
      //   //   bottom: BorderSide(
      //   //     color: Colors.black,
      //   //     width: 0.1,
      //   //   ),
          
      //   // ),
      // ),    
      body: _widgetOptions.elementAt(_selectedIndex),  
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: 'Wall',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            activeIcon: Icon(Icons.calendar_today),
            label: 'Class',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: ontapItem,
        selectedItemColor: Colors.black,
      ),
    );
  }
}

class MainHome extends StatefulWidget {
  const MainHome({ Key? key }) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  String user = "Sungchan"; //get user name from auth
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Text("UrUmass",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,),),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.only(top:30, left: 30),
            //decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
            child: Text("Welcome, $user",
            style: TextStyle(
              fontSize: 17,
            ),)
          ),
        ),
      ],
    );
  }
}