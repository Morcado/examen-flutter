import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hola/perfil.dart';
import 'package:hola/principal.dart';

import 'carrito.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        DrawerHeader(
          child: Text(
            "Mercado de cositas",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          
          decoration: BoxDecoration(
            color: Colors.green
          ),
        ),
        ListTile(
          title: Text("Perfil"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil()));
          } 
        ),
        ListTile(
          title: Text("Categorías"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Principal()));
          }
        ),
        ListTile(
          title: Text("Carrito de compras"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Carrito()));
          }
        ),
        ListTile(
          title: Text("Promociones"),
          //onTap: ,
        ),
      ],),
    );
  }
  
}