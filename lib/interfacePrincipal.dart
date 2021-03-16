import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcool ou Gasolina"),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
