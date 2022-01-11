import 'package:custom_navigator/custom_navigator.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:urumass/account.dart';
import 'package:urumass/class.dart';
import 'package:urumass/dashboard.dart';
import 'package:urumass/home.dart';

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
        brightness: Brightness.light,
        fontFamily: 'PT_Sans',
      ),

      home: testPage(),
    );
  }
}

class testPage extends StatefulWidget {
  const testPage({ Key? key }) : super(key: key);

  @override
  _testPageState createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  int _selectedIndex = 0;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void ontapItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override   
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: 'Dashboard',
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
        ),
      ),
      children: <Widget>[
        Home(),
        Dashboard(),
        Class(),
        Account(),
      ],
      onItemTap: (index) {},
    );
  }
}
