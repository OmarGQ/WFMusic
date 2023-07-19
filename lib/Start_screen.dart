import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:wfmusic/Login_screen.dart';
import 'dart:async';
import 'dart:convert';
class Start_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void Sesion() async{
      final  sesion = await SharedPreferences.getInstance();
      final deluser = await sesion.remove('User');
      final delpass = await sesion.remove('Pass');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Center(
        child: TextButton(
          child: Text('Cerrar sesion'),
          onPressed: () {
            Sesion();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login_screen()),
            );
          },
        ),
      ),
    );
  }
}