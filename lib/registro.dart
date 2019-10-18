import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Registro")),
      body: Form( child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60.0,),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nombre de usuario",
                ),
              ),
            ),
            SizedBox(height: 60.0,),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Correo",
                ),
              ),
            ),
            SizedBox(height: 60.0,),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Celula",
                ),
              ),
            ),
          ],

        ),
      ),)
    );
  }

}