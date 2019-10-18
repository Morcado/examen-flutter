import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/login.dart';
import 'package:hola/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Mercado';

    return MaterialApp(
    
      theme: new ThemeData(primarySwatch: Colors.green),
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: Text(appTitle)),
        body: LoginScreen(),
        drawer: Menu(),
      ),
    );
  }
}

