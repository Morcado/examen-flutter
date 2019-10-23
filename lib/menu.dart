import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hola/data.dart';
import 'package:hola/listaVendedores.dart';
import 'package:hola/perfil.dart';
import 'package:hola/principal.dart';
import 'package:hola/promociones.dart';

import 'carrito.dart';


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        DrawerHeader(
          child: Text(
            "Mercado de cositas",
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
          
          decoration: BoxDecoration(
            //image: DecorationImage(colorFilter: ColorFilter.mode(Colors.brown, BlendMode.color), image: AssetImage("assets/images/mercado.jpg")),
            
          ),
        ),
        ListTile(
          title: Text("Perfil"),
          onTap: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil()));
            Navigator.pushNamed(context, Perfil.ruta, arguments: vendedores[0]);
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
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Promociones()));
          }
        ),
        ListTile(
          title: Text("Vendedores"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListaVendedores()));
          }
        ),
      ],),
    );
  }
  
}