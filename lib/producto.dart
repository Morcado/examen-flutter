import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hola/preguntas.dart';
import 'package:hola/principal.dart';
import 'package:hola/targeta.dart';

import 'menu.dart';
import 'opiniones.dart';

class Producto extends StatelessWidget {
  static const ruta = '/extracto';
  @override
  Widget build(BuildContext context) {
    final ArgsProducto argsProd = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Producto")),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Container(
                child: Image.asset("assets/images/" + argsProd.foto),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(argsProd.nombre, style: TextStyle(fontSize: 30),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text("Descripcion", style: TextStyle(fontSize: 20),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(argsProd.descripcion),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text("Descuento de " + argsProd.descuento, style: TextStyle(fontSize: 20),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 20.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context, Opinion.ruta, 
                            arguments: ArgsOpiniones(argsProd.nombre, argsProd.opinion2, argsProd.opinion2)
                          );
                        },
                        child: Text('Opiniones'),
                      ),
                    ),
                    Container(
                      child:
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Tarjeta()));
                        },
                        child: Text('Pagar con tarjeta'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context, Pregunta.ruta, 
                      arguments: ArgsPreguntas(argsProd.pregunta1, argsProd.respuesta1, argsProd.pregunta2, argsProd.respuesta2),
                    );
                  },
                  child: Text('Preguntas y respuestas'),
                ),
              ),
              /* Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context, Opinion.ruta, 
                              arguments: ArgsOpiniones(argsProd.nombre, argsProd.opinion2, argsProd.opinion2)
                            );
                          },
                          child: Text('Opiniones'),
                        ),
                      ),
                      Container(
                        child:
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Tarjeta()));
                          },
                          child: Text('Pagar con tarjeta'),
                        ),
                      ),
                      
                    ],
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarjeta()));
                      },
                      child: Text('Preguntas y respuestas'),
                    ),
                  )
                ],)
              ), */

              

/*               Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(argsProd.nombre, style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Descripcion", style: TextStyle(fontSize: 20),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(argsProd.descripcion),
              ),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Descuento de " + argsProd.descuento, style: TextStyle(fontSize: 20),),
              ), */
              /* Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 0, 0.0, 20.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context, Opinion.ruta, 
                          arguments: ArgsOpiniones(argsProd.nombre, argsProd.opinion2, argsProd.opinion2)
                        );
                      },
                      child: Text('Opiniones'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 0, 0.0, 20.0),
                    child:
                     RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Tarjeta()));
                      },
                      child: Text('Pagar con tarjeta'),
                    ),
                  ),
                  
                ],
              ), */
              /* Container(
                padding: EdgeInsets.fromLTRB(20.0, 0, 0, 20.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tarjeta()));
                  },
                  child: Text('Preguntas y respuestas'),
                ),
              ) */
            ],
          ),
        )
      ),
    );
  }

}