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
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
      //Coluna
      child: Column(
        children: [
          //Padding Logo
          Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Image.asset("images/logo.png"),
          ),
          //Segundo Texto
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("Saiba a melhor opcao para o seu carro.",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
          ),
          //Primeiro Campo Texto
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Preco do Alcool, exe: 1.59"
            ),
          ),
          //Segundo Campo Texto
          TextField(
            
          ),
          //Botado
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: RaisedButton( 
              child: Text("Calcular"),
              onPressed: (){}),
          ),
        ],
      ), 
      ),
    );
  }
}
