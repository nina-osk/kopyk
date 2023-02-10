import 'package:flutter/material.dart';

class Bienvenida extends StatefulWidget{
  String usu;
  Bienvenida(this.usu);
  @override
  State<Bienvenida> createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Bienvenido a Kopyk'),
       ),
         drawer: Drawer(
           child: ListView(
             padding: EdgeInsets.all(0),
             children: [
               UserAccountsDrawerHeader(
                 decoration: BoxDecoration(
               color: Colors.deepOrangeAccent,
           ),
                    accountName: Text('Oscarina'),
                    accountEmail: Text('@gmail.com'),
               ),
               ListTile(
                 title: Text('Perfil'),
                 leading: Icon(Icons.person),
                 onTap: (){
                   Navigator.of(context).pop();
                   Navigator.pushNamed(context, '/perfil');
                 },
               ),
               ListTile(
                 title: Text('Galeria'),
                 leading: Icon(Icons.photo_camera),
                 onTap: (){},
               ),
             ],
           )

     ),
       body: ListView(
         children: [
           Container(
             padding: EdgeInsets.all(20),
             child: Text(
               'Bienvenid@ a Kopyk' + widget.usu,
             style: TextStyle(
               fontSize: 20,
             )
           )
           ),
         ],
       ),
     );

  }

}