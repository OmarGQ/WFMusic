import 'package:flutter/material.dart';
import 'package:wfmusic/Reservaciones.dart';

class Next_events extends StatefulWidget {
  @override
  _Next_eventsState createState() => _Next_eventsState();
}

class _Next_eventsState extends State<Next_events> {
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
        body: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff2c2c2c),
              ),
              child: Center(
                child: Text(
                  "Eventos",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 25,
                    color: Colors.white,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
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
                            Text(
                              'Dia',
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
                        height: 90,
                        width: 295,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Reservaciones()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Nombre del evento',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "OpenSans",
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Locacion',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "OpenSans",
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'fecha',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "OpenSans",
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Hora',
                                  style: TextStyle(
                                    color: Colors.grey,
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
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
                            Text(
                              'Dia',
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
                        height: 90,
                        width: 295,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Reservaciones()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Nombre del evento',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "OpenSans",
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Locacion',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "OpenSans",
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'fecha',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "OpenSans",
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Hora',
                                  style: TextStyle(
                                    color: Colors.grey,
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
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
                            Text(
                              'Dia',
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
                        height: 90,
                        width: 295,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Reservaciones()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Nombre del evento',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "OpenSans",
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Locacion',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "OpenSans",
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'fecha',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "OpenSans",
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Hora',
                                  style: TextStyle(
                                    color: Colors.grey,
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
        ]),
      ),
    );
  }
}

/*
final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

ListView.separated(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
    );
  },
  separatorBuilder: (BuildContext context, int index) => const Divider(),
);
 */