import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/menu.dart';

class Carrito extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrito de compras"),),
      drawer: Menu(),
      body: SingleChildScrollView(child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: <Widget>[
/*             Row(
              children: <Widget>[
                Image.asset("assets/images/cama.jpg"),
                Text("Cama"),
                Text("Cantidad: 2"),
              ],
            ) */
          ],
        )
      ),),
    );
  }

}