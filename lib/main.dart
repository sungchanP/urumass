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
        //brightness: Brightness.light,
        fontFamily: 'PT_Sans',
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black),
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

  static const List<Widget> _widgetOptions=[
    Home(),
    Dashboard(),
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
      appBar: AppBar(
        title: const Text(
          "UrUmass", 
          style: TextStyle(
            color: Colors.black
            ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 0.1,
          ),
          
        ),
      ),    
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
        currentIndex: _selectedIndex,
        onTap: ontapItem,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
