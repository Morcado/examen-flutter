import 'package:flutter/material.dart';
import 'package:hola/menu.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(title: Text("Oscar")),
      body: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 60.0,),
          Center(child: CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/500"),
            minRadius: 90, maxRadius: 150,
          ),),
          SizedBox(height: 60.0),
          Container(
            child: Text(
              "Oscar Patiño",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            child: Text(
              "Correo: gposcarr18@hotmail.com",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            child: Text(
              "Telefono: 4448275277",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),)
    );
  }

}