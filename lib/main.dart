import 'package:flutter/material.dart';

void main() => runApp(ContadorPessoa());

class ContadorPessoa extends StatefulWidget {
  createState() => _ContadorPessoa();
}

class _ContadorPessoa extends State<ContadorPessoa> {
  int _contador = 0;
  String _texto = "Podes Entrar !";

  void _count(int valor) {
    setState(() {
      _contador += valor;

      if (_contador < 0) {
        _texto = "Numero Invalido";
      } else if (_contador > 10) {
        _texto = "Esta cheio";
      } else {
        _texto = "Podes Entrar !";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Contador de pessoas",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Contador de pessoas"),
              backgroundColor: Colors.redAccent,
            ),
            body: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Pessoa: $_contador",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(12.00),
                              child: ElevatedButton(
                                onPressed: () {
                                  _count(1);
                                },
                                child: Text("+1"),
                              )),
                          Padding(
                              padding: EdgeInsets.all(12.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    _count(-1);
                                  },
                                  child: Text("-1")))
                        ]),
                    Text("$_texto",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25))
                  ]),
            )));
  }
}
//chamar a funcao runApp para rodar a app
//para definir o runApp importamos a library  import 'package:flutter/material.dart'
// passamos o  ogjecto ou widget MaterialApp(
// 
// title usado internamente, um parametro opcional, nao e visivel na tela
// home tela principal 
// as telas completas sao widgets
// 
// )