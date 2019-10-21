import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/principal.dart';
import 'package:hola/menu.dart';

class Pregunta extends StatelessWidget {
  static const ruta = '/extracto3';
  @override
  Widget build(BuildContext context) {
    final ArgsPreguntas argsProd = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Producto")),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text("Preguntas y respuestas", style: TextStyle(fontSize: 30),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(argsProd.pregunta1, style: TextStyle(fontSize: 20),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(argsProd.respuesta1,),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(argsProd.pregunta2, style: TextStyle(fontSize: 20),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(argsProd.respuesta2, ),
              ),
            ],
          ),
        )
      )
    );
  } 

}