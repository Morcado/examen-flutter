import 'package:flutter/material.dart';
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
              child: Text("Accesssorios para perros", style: TextStyle(fontSize: 20.0),)
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/" + productos[0].foto),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, VistaProducto.ruta, arguments: productos[0]);
                    }
                  ),),
                  Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/" + productos[1].foto),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, VistaProducto.ruta, arguments: productos[1]);
                    }
                  ),),
                   Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/" + productos[2].foto),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, VistaProducto.ruta, arguments: productos[2]);
                    }
                  ),),  
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 20.0),
              child: Text("Electronicos", style: TextStyle(fontSize: 20.0),)
            ),
           
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/" + electronicos[0].foto),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, VistaProducto.ruta, arguments: electronicos[0]);
                    }
                  ),),
                  Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/" + electronicos[1].foto),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, VistaProducto.ruta, arguments: electronicos[1]);
                    }
                  ),),
                   Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/" + electronicos[2].foto),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, VistaProducto.ruta, arguments: electronicos[2]);
                    }
                  ),),  
                   Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/" + electronicos[3].foto),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, VistaProducto.ruta, arguments: electronicos[3]);
                    }
                  ),),  
                ],
              ),
            ),

          ],
        )
      )
    );
  }
}