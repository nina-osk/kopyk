import 'package:flutter/material.dart';
import 'package:kopyk/src/screens/bienvenida.dart';




class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() =>_PantallaLoginState();
  }

class _PantallaLoginState extends State<LoginPage>{

  final usuario=TextEditingController();
  final password = TextEditingController();

  String usu='';
  String pass='';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Kopyk'),
      ),
      body: GestureDetector(
        onTap: (){
          final FocusScopeNode focus = FocusScope.of(context);
          if(!focus.hasPrimaryFocus && focus.hasFocus){
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              alignment: Alignment.center,
              child: Image.asset('assets/icon.png'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: usuario,
                decoration: InputDecoration(
                  hintText: 'Usuario'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: ElevatedButton(
                child: Text(
                  'Ingresar',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: (){
                  usu = usuario.text;
                  pass = password.text;
                  print(usu+''+pass);

                  if(usu=='osca' && pass=='123'){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context){
                      return  Bienvenida(usu);
                    }
                    ),(Route<dynamic> route)=>false);
                  }else{
                    showDialog(context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('Kopyk'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Text('Verifica tus datos'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: (){
                                Navigator.of(context).pop();
                                },
                                child: Text('Aceptar'),
                            ),
                          ],
                        );
                        }
                        );
                  }
                  usuario.text='';
                  password.text='';
                },
              ),
            )
          ],
        ),
      ),
    );
  }

}


