import 'package:flutter/material.dart';


class super_borrar extends StatefulWidget {
  @override
  _super_borrarState createState() => _super_borrarState();
}

class _super_borrarState extends State<super_borrar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Borrar Usuario'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.orange),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.black87,
        ),
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                color: Colors.grey,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    Container(
                      height: 80,
                      width: 287,
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nombre",
                              style: TextStyle(color: Colors.black, fontSize: 35),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Nivel de Usuario",
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        print("borrar usuario"); //////////añadir codigo
                      },
                      child: Container(
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
                        child: Icon( Icons.delete_outline, size: 50),
                      ),
                    ),
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}