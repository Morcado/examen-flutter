import 'package:flutter/material.dart';
import 'package:hola/menu.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(title: Text("Oscar")),
      body: SingleChildScrollView( child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60.0, bottom: 60.0),
              child: Center(child: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/500"),
                minRadius: 90, maxRadius: 150,
              ),),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Oscar Patiño",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Correo: gposcarr18@hotmail.com",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Telefono: 4448275277",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ))
    );
  }

}