import 'package:flutter/material.dart';

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
  @override
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions=[
    Text("Home"),
    Text("Dashboard"),
    Text("Account"),
  ];

  void ontapItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "whatever", 
          style: TextStyle(
            color: Colors.black
            ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),    
      body: _widgetOptions.elementAt(_selectedIndex),  
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          )
        ],
        onTap: ontapItem,
        currentIndex: _selectedIndex,
      ),
      
    );
  }
}
