import 'package:flutter/material.dart';
import 'package:hola/producto.dart';
import 'package:hola/vistaProducto.dart';
import 'menu.dart';
import 'data.dart';

class ArgsOpiniones {
  final String nombre;
  final String opinion1;
  final String opinion2;
  ArgsOpiniones(this.nombre, this.opinion1, this.opinion2, );
}

class ArgsPreguntas {
  final String pregunta1;
  final String respuesta1;
  final String pregunta2;
  final String respuesta2;
  ArgsPreguntas(this.pregunta1, this.respuesta1, this.pregunta2, this.respuesta2);
}

class Principal extends StatelessWidget {
  static List<Container> perros (BuildContext context, List<Producto> p) {
    List<Container> perros = new List<Container>();
    for (var i = 0; i < p.length; i++) {
      var con = Container(child: GestureDetector(
        child: Container(
          height: 200.0, width: 200.0,
          child: Image.asset("assets/images/" + p[i].foto),
        ),
        onTap: () {Navigator.pushNamed(context, VistaProducto.ruta, arguments: p[i]);}
      ),);
      perros.add(con);
    }
    return perros;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina principal"),
      ),
      drawer: Menu(),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 20.0),
              child: Text("Accesssorios para perros", style: TextStyle(fontSize: 20.0, color: Colors.orange),)
            ),
            Container(
              height: 250.0,
              child: ListView(scrollDirection: Axis.horizontal, children: perros(context, productos[1]),),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 20.0),
              child: Text("Electronicos", style: TextStyle(fontSize: 20.0, color: Colors.orange),)
            ),
            Container(
              height: 250.0,
              child: ListView(scrollDirection: Axis.horizontal, children: perros(context, productos[0])),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 20.0),
              child: Text("Heramientas de casa", style: TextStyle(fontSize: 20.0, color: Colors.orange),)
            ),
            Container(
              height: 250.0,
              child: ListView(scrollDirection: Axis.horizontal, children: perros(context, productos[2])),
            ),
          ],
        )
      )
    );
  }
}