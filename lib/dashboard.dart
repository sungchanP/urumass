import 'package:flutter/material.dart';



class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    BoxDecoration dashboardDeco = BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1.0,
    )
  );

  return ListView(
    padding: const EdgeInsets.all(40),
    children: [
      Container(
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
            ),
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            InkWell(
              child: Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 60),
                child: Text("1st board"),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstBoard()));
              },
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 60),
              child: Text("2nd board"),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 60),
              child: Text("3rd board"),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 60),
              child: Text("4th board"),
            ),
          ],
        ),
      ),
      SizedBox(height: 50,),
      Container(
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
            ),
        ),
      )  
    ]
  );
  }
}

class FirstBoard extends StatefulWidget {
  const FirstBoard({ Key? key }) : super(key: key);

  @override
  _FirstBoardState createState() => _FirstBoardState();
}

class _FirstBoardState extends State<FirstBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("1st board", style: TextStyle(color: Colors.black),),
      ),
      body: Text("this is 1st dashboard"),
    );
  }
}
