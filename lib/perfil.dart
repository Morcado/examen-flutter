import 'package:flutter/material.dart';
import 'package:hola/menu.dart';
import 'package:hola/principal.dart';
import 'package:hola/vendedor.dart';

import 'data.dart';

class Perfil extends StatelessWidget {
  static const ruta = "/extracto4";
  @override
  Widget build(BuildContext context) {
    final Vendedor perf = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(title: Text("Oscar")),
      body: ListView(children: <Widget>[ 
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 60.0, bottom: 50.0),
                child: Center(child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/" + perf.foto),
                  minRadius: 90, maxRadius: 150,
                ),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(perf.nombre, style: TextStyle(fontSize: 30, color: Colors.orange),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text("Correo: " + perf.correo, style: TextStyle(fontSize: 20),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text("Telefono: " + perf.telefono, style: TextStyle(fontSize: 20),),
              ),
              Container(
                padding: EdgeInsets.only(),
                child: Text("Productos que vende"),
              ),
            ],
          ),
        ),
        Container(
          height: 225.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: Principal.perros(context, productos[perf.cat]),
          ),
        ),
       
      ],)
    );
  }

}