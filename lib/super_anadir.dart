import 'package:flutter/material.dart';

class super_anadir extends StatefulWidget {
  @override
  _super_anadirState createState() => _super_anadirState();
}

class _super_anadirState extends State<super_anadir> {
  List<String> items = ['item1', 'item2', 'item3', 'item4'];
  String? selectedItem = 'item1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Añadir Usuario'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.orange),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Column(
          children: [
            Text(
              "Nombre:",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 290,
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                    hintText: 'Introdusca de pila'),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              "Apellido Paterno:",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 290,
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                    hintText: 'Introdusca el primer apellido'),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              "Apellido Materno:",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 290,
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                    hintText: 'Introdusca el segundo apellido'),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              "Apellido Materno:",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 290,
              height: 40,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
                value: selectedItem,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (item) => setState(() => selectedItem = item),
              ),
            ),
            Text(
              "Contraseña:",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 290,
              height: 30,
              child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              "Confirme Contraseña:",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 290,
              height: 30,
              child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
