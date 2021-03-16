import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  //Controllers para pegar valor digitados
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _resultado = "";

  //Metodo para calcular
  void _calcular() {
    //Recuperar o que o usuario editou
    //Converter em double
    double precoAlcool = double.tryParse(_controllerAlcool.text);
    double precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _resultado = "Numero invalido, digite numeros maiores que 0 e (.)";
      });
    } else {
      setState(() {
        /*
        *Se o preco do alcool divido pelo preco da gasolina
        *for >= a 0.7 melhor abastecer com gasolina
        *senao melhor utilizar alcool.
        */
        if (precoAlcool / precoGasolina >= 0.1) {
          setState(() {
            _resultado = "Melhor abastecer com gasolina";
          });
        } else {}
        _resultado = "Melhor abastecer com alcool.";
      });
    }
  }

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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: _calcular),
            ),
            //NovoTexto
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                _resultado,
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
