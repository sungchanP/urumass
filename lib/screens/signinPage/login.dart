import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:urumass/screens/home.dart';


class loginPage extends StatefulWidget {
  const loginPage({ Key? key }) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  bool _pwvisible = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController pwController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left:50, right: 50),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Official college email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                controller: emailController,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left:50, right: 50),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _pwvisible?
                      Icons.visibility: Icons.visibility_off,
                      ),
                    onPressed: () {
                      setState(() {
                        _pwvisible = !_pwvisible;
                      });
                    },)
                ),
                controller: pwController,
                obscureText: _pwvisible,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, left: 40),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.purple,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    ),
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(top: 15, right: 65),
                    child: Text("Log In",
                    style: TextStyle(color: Colors.purple, fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  },
                ),
              ],
            )
          ],
        ),),
    );
  }
}