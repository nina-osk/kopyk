import 'package:flutter/material.dart';
import 'package:kopyk/src/screens/login_page.dart';


class MyHomePage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kopyk'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
            alignment: Alignment.center,
            child:Image.asset('assets/icon.png'),
        ),
          Container(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                child: const Text("Ingresar",
                    style: TextStyle(fontSize: 30)),
                onPressed: () {
                  _showSecondPage(context);
                },)
          ),
],));
  }

void _showSecondPage(BuildContext context){
    Navigator.of(context).pushNamed("/login", arguments:"Oscarina");
  }
}



