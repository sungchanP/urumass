import 'package:flutter/material.dart';



class Wall extends StatefulWidget {
  const Wall({ Key? key }) : super(key: key);

  @override
  State<Wall> createState() => _WallState();
}

class _WallState extends State<Wall> {
  @override
  Widget build(BuildContext context) {
    BoxDecoration dashboardDeco = BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1.0,
      
    ),
  );

  return ListView(
    padding: const EdgeInsets.only(top: 20, left: 30),
    children: [
      SafeArea(
        child: Container(
          height: 600,
          /*
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10)
              ),
          ),
          */
          child: Column(
            children: [
              Container(
                //padding: EdgeInsets.only(top: 10),
                child: Align(
                  child: Text(
                    "Wall",
                    style: TextStyle(fontSize: 25),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                //decoration: dashboardDeco,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              InkWell(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(child: Text("College Info Wall"), alignment: Alignment.centerLeft,),
                  //decoration: dashboardDeco,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstBoard()));
                },
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 40),
                child: Align(child: Text("Class/Professor Info Wall"), alignment: Alignment.centerLeft,),
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 40),
                child: Align(child: Text("Free Wall"), alignment: Alignment.centerLeft,),
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 40),
                child: Align(child: Text("Meeting Wall"), alignment: Alignment.centerLeft,),
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 40),
                child: Align(child: Text("Housing Wall"), alignment: Alignment.centerLeft,),
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 40),
                child: Align(child: Text("Buy/Sell Wall"), alignment: Alignment.centerLeft,),
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 40),
                child: Align(child: Text("Events Wall"), alignment: Alignment.centerLeft,),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 50,),
      // Container(
      //   height: 300,
      //   decoration: BoxDecoration(
      //     border: Border.all(
      //       color: Colors.black,
      //       width: 1.0,
      //     ),
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(10)
      //       ),
      //   ),
      // )  
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
