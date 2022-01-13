import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:urumass/model/university.dart';
import 'package:urumass/screens/signinPage/login.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  List<String> uniNames =[];

  @override
  void initState(){
    super.initState();
    fetchUni().then((value) => uniNames = value);
  }

  Future fetchUni() async{
    var url = Uri.parse("https://raw.githubusercontent.com/Hipo/university-domains-list/master/world_universities_and_domains.json");
    var response = await http.get(url);
    var jsonData = json.decode(response.body);
    List<University> unis = [];
    for(var element in jsonData){
      University uni = University(element['name'], element['domains']);
      unis.add(uni);
    }

    List<String> uniNames = [];
    for(var element in unis){
      uniNames.add(element.name);
    }
    return uniNames;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Autocomplete(
            optionsBuilder: (TextEditingValue textEditingValue){
              if(textEditingValue.text.isEmpty){
                return const Iterable<String>.empty();
              } return uniNames.where((String uni) {
                return uni.toLowerCase().contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (seletedString){
              print(seletedString);
            },
            fieldViewBuilder: (context, controller, focusNode, onEditingComplete){
              return Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  controller: controller,
                  focusNode: focusNode,
                  onEditingComplete: onEditingComplete,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Select your college",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const loginPage()));
                      },
                      ),
                    contentPadding: EdgeInsets.only(left: 30),
                  ),
                ),
              );
            }
          )
        ],
      ),

    );
  }
}