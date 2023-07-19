import 'package:flutter/material.dart';
import 'package:wfmusic/Splash.dart';
import 'Super.dart';
import 'package:wfmusic/Reservaciones.dart';
import 'package:wfmusic/Next_events.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      //home: Super(),//cambiar por el splash
      home: Next_events(),
    );
  }
}