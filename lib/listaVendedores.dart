import 'package:flutter/material.dart';
import 'package:hola/perfil.dart';
import 'data.dart';
import 'menu.dart';

class ListaVendedores extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListaVende();
  }
}

class ListaVende extends State<ListaVendedores> {
  List<Container> _vendedores() {
    int index = 0;
    return vendedores.map((vend) {
      var container = Container(
        decoration: index % 2 == 0? BoxDecoration(color: Colors.black12) : BoxDecoration(color: Colors.white70),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Perfil.ruta, arguments: vendedores[vend.id]);
          } ,
          child: Row(
            children: <Widget>[
              Container(
                decoration: index % 2 == 0? BoxDecoration(color: Colors.black12) : BoxDecoration(color: Colors.white),
                height: 100.0,
                width: 100.0,
                padding: EdgeInsets.all(10.0),
                child: Center(child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/" + vend.foto),
                  minRadius: 50, maxRadius: 60,
                ),),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(vend.nombre, style: TextStyle(fontSize: 20.0),),
                  ),
                ],
              )
            ],
          ),
        )
      );
      index = index + 1; 
      return container;
    }).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vendedores disponibles"),),
      drawer: Menu(),
      body: Container(child: ListView(
      children: _vendedores(),
    ),),
    );
  }
}