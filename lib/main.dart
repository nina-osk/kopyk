import 'package:flutter/material.dart';
import 'package:kopyk/main.dart';
import 'package:kopyk/src/screens/home_page.dart';
import 'package:kopyk/src/screens/login_page.dart';
import 'package:kopyk/src/screens/perfil.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      title: 'Kopyk',
      //home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/":(BuildContext context)=>MyHomePage(),
        "/login":(BuildContext context)=>LoginPage(),
        "/perfil":(BuildContext context)=>PerfilPage(),
      },
    );
  }
}





