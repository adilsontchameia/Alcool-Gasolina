import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  //
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          //Coluna
          child: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Column(
          //Especialmente Pro Botao
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Padding Logo
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("images/logo.png"),
            ),
            //Segundo Texto
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Saiba a melhor opcao para o seu carro.",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            //Primeiro Campo Texto
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: "Preco do Alcool, exe: 1.59"),
              style: TextStyle(fontSize: 22),
              //Captura do que o usuario digitou
              controller: _controllerAlcool,
            ),
            //Segundo Campo Texto
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: "Preco da Gasolina, exe: 3.59"),
              style: TextStyle(fontSize: 22),
              //Captura do que o usuario digitou
              controller: _controllerGasolina,
            ),
            //Botado
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: () {}),
            ),
            //NovoTexto
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Resultado",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )),
    );
  }
}
