import 'package:flutter/material.dart';
import 'super_anadir.dart';
import 'super_modificar.dart';
import 'super_borrar.dart';

class Super extends StatefulWidget {
  @override
  _SuperState createState() => _SuperState();
}

class _SuperState extends State<Super> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Super Usuario'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.orange),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment. center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment. center,
              crossAxisAlignment: CrossAxisAlignment. center,
              children: [
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 157, 00, 1), borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => super_anadir()));
                    },
                    child: Text(
                      'Añadir Usuario',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment. center,
              crossAxisAlignment: CrossAxisAlignment. center,
              children: [
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(03, 00, 157, 1), borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => super_modificar()));
                    },
                    child: Text(
                      'Modificar Usuario',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment. center,
              crossAxisAlignment: CrossAxisAlignment. center,
              children: [
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(190, 00, 00, 1), borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => super_borrar()));
                    },
                    child: Text(
                      'Borrar Usuario',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}