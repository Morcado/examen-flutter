import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hola/menu.dart';
import 'package:hola/vistaProducto.dart';

import 'data.dart';

class Promociones extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Promos();
  }
}

class Promos extends State<Promociones> {
  List<Container> _promos() {
    int index = 0;
    return productos[2].map((produc) {
      var container = Container(
        decoration: index % 2 == 0? BoxDecoration(color: Colors.black12) : BoxDecoration(color: Colors.white70),
        child: GestureDetector( 
          onTap: () {Navigator.pushNamed(context, VistaProducto.ruta, arguments: productos[2][produc.id]);},
          child: Row(children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white),
              height: 100.0,
              width: 100.0,
              padding: EdgeInsets.only(right: 10.0),
              child: Image.asset("assets/images/" + produc.foto),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width - 150,
                  padding: EdgeInsets.only(bottom: 10.0, left: 20.0),
                  child: Text(produc.nombre, style: TextStyle(fontSize: 20.0) ,),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(produc.descuento + " de descuento"),
                )
              ],
            )
            
          ],),
        )
      );
      index = index + 1;
      return container;
    }).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Promociones del dia de hoy"),),
      drawer: Menu(),
      body: ListView(children: _promos(),)
    );
  }

}