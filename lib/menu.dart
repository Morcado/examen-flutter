import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        DrawerHeader(
          child: Text("Perfil"),
          decoration: BoxDecoration(
            color: Colors.greenAccent
          ),
        ),
        ListTile(
          title: Text("Categorias"),
          //onTap: ,
        ),
        ListTile(
          title: Text("Productos"),
          //onTap: ,
        ),
        ListTile(
          title: Text("Promociones"),
          //onTap: ,
        ),
      ],),
    );
  }
  
}