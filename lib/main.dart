import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/login.dart';
import 'package:hola/opiniones.dart';
import 'package:hola/producto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Producto.ruta: (context) => Producto(),
        Opinion.ruta: (context) => Opinion()  
      },
      theme: new ThemeData(primarySwatch: Colors.green),
      title: "Mercado de cosas",
      home: Scaffold(
        appBar: AppBar(title: Text("Mercado de cosas")),
        body: LoginScreen(),
      ),
    );
  }
}

