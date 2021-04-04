import 'package:flutter/material.dart';
import 'file:///C:/Users/medko/Desktop/Dossiers/CourEnset/DevMobile/git_hub_app/lib/pages/home/HomePage.dart';
import 'file:///C:/Users/medko/Desktop/Dossiers/CourEnset/DevMobile/git_hub_app/lib/pages/users/UsersPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        "/":(context)=>HomePage(),
        "/Users": (context)=>UsersPage(),
      },
      //by default initialRoute = "/" and we can change it
      initialRoute: "/Users",
      theme: ThemeData(
        primaryColor: Colors.green,

      ),
      title: "GitHub Users",
    );
  }

}