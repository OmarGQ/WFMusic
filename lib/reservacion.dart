import 'package:flutter/material.dart';

class Reservacion extends StatefulWidget {
  @override
  _ReservacionState createState() => _ReservacionState();
}

class _ReservacionState extends State<Reservacion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Nombre de Usuario'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.orange),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Column(),
      ),
    );
  }
}