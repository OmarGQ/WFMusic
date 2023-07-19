import 'package:flutter/material.dart';
import 'package:wfmusic/Login_screen.dart';
import 'package:wfmusic/Start_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void Sesion () async{
      try {
        final  sesion = await SharedPreferences.getInstance();
        final String? usuario = sesion.getString('User');
        final String? pass = sesion.getString('Pass');
        var url = "https://wfmusicdatabase.000webhostapp.com/iniciosesion.php";
        var respuesta = await http.post(Uri.parse(url),
            body: {
              'user': usuario, 'pass': pass
            }
        ).timeout(const Duration(seconds: 60));

        var dato = json.decode(respuesta.body) /*["res"]*/;
        if(dato == '1'){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Start_screen()),//Vista de los administradores
          );
        }
        else if(dato == '2'){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Start_screen()),//Vista de los planners
          );
        }
        else if(dato == '3'){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Start_screen()),//Vista de los visualizadores
          );
        }
        else{

        }
      }on TimeoutException catch(e){
        print('No se pudo cargar la sesión');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login_screen()),//Vista de los planners
        );
      }catch(e){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login_screen()),//Vista de los planners
        );
      }
    }
    Sesion();
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(top: 350.0),
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
      ]
      ),
    )
    );

  }
}