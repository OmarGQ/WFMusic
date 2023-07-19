import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wfmusic/Start_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';




class Login_screen extends StatefulWidget {
  @override
  _Login_screenState createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {

  final cajausuario = TextEditingController();
  final cajacontrasena = TextEditingController();

  String usuario = '';
  String contrasena = '';

  void ingresoRequest(bdusuario, bdcontrasena) async{
    try {
      var url = "https://wfmusicdatabase.000webhostapp.com/iniciosesion.php";
      var respuesta = await http.post(Uri.parse(url),
          body: {
            'user': bdusuario, 'pass': bdcontrasena
          }
      ).timeout(const Duration(seconds: 60));

      var dato = json.decode(respuesta.body) /*["res"]*/;
      if(dato == '1'){
        final sesion = await SharedPreferences.getInstance();
        await sesion.setString('User', bdusuario);
        await sesion.setString('Pass', bdcontrasena);
        Fluttertoast.showToast(
          msg: 'Bienvenido Administrador.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Start_screen()),//Vista de los administradores
        );
      }
      else if(dato == '2'){
        final sesion = await SharedPreferences.getInstance();
        await sesion.setString('User', bdusuario);
        await sesion.setString('Pass', bdcontrasena);
        Fluttertoast.showToast(
          msg: 'Bienvenido Planner.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Start_screen()),//Vista de los planners
        );
      }
      else if(dato == '3'){
        final sesion = await SharedPreferences.getInstance();
        await sesion.setString('User', bdusuario);
        await sesion.setString('Pass', bdcontrasena);
        Fluttertoast.showToast(
          msg: 'Bienvenido Administrador.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Start_screen()),//Vista de los visualizadores
        );
      }
      else{
        Fluttertoast.showToast(
          msg: 'ERROR: SU NIVEL DE USUARIO ES DESCONOCIDO.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }


    }on TimeoutException catch(e){
      print('la solicitud tarda demasiado');
    }catch(e){
      Fluttertoast.showToast(
        msg: 'El usuario o la contraseña no es valido.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      cajausuario.clear();
      cajacontrasena.clear();

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('asset/images/logo.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80.0, right: 130),
              child: Text(
                "Inicie Sesión",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "OpenSans",
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0, right: 175),
              child: Text(
                "Por favor ingrese sus datos",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "OpenSans",
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: cajausuario,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                    labelText: 'Usuario',
                    hintText: 'Introdusca su nombre de usuario'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: cajacontrasena,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                    labelText: 'Contraseña',
                    hintText: 'Introdusca su contraseña'),
              ),
            ),
            TextButton(
              //style: flatButtonStyle,
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE

              },
              child: Text('Olvido su contraseña',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 45,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {

                  usuario = cajausuario.text;
                  contrasena = cajacontrasena.text;
                  if(usuario != '' && contrasena != ''){
                    ingresoRequest(usuario, contrasena);
                  }
                  else{
                    Fluttertoast.showToast(
                      msg: 'No es posible dejar campos vacios.',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  }
                  //Navigator.push(
                  //context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Si requiere un nuevo usuario, contacte a su superior')
          ],
        ),
      ),
    );
  }
}
