import 'package:flutter/material.dart';
import 'reservacion.dart';

class Reservaciones extends StatefulWidget {
  @override
  _ReservacionesState createState() => _ReservacionesState();
}

class _ReservacionesState extends State<Reservaciones> {
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
        body: Column(
            children: <Widget>[
              Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Mes",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "OpenSans",
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Dia',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "OpenSans",
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 295,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Nombre del evento'),
                          Text('Locacion'),
                          Text('fecha'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child:
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 386,
                            decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reservacion()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Nombre del atendiente',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "OpenSans",
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'estado',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "OpenSans",
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'personal que lo agrego',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "OpenSans",
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 386,
                            decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reservacion()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Nombre del atendiente',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "OpenSans",
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'estado',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "OpenSans",
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'personal que lo agrego',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "OpenSans",
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 386,
                            decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reservacion()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Nombre del atendiente',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "OpenSans",
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'estado',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "OpenSans",
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'personal que lo agrego',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "OpenSans",
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}