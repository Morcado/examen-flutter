import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hola/perfil.dart';
import 'package:hola/preguntas.dart';
import 'package:hola/principal.dart';
import 'package:hola/producto.dart';

import 'carrito.dart';
import 'data.dart';
import 'menu.dart';
import 'opiniones.dart';

class VistaProducto extends StatelessWidget {
  static const ruta = '/extracto';
  @override
  Widget build(BuildContext context) {
    final Producto argsProd = ModalRoute.of(context).settings.arguments;
  
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
                child: Center(
                  child: Image.asset("assets/images/" + argsProd.foto),
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(argsProd.nombre, style: TextStyle(fontSize: 30, color: Colors.orange),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(children: <Widget>[
                  Text("Vendido por " + vendedores[argsProd.vendedor].nombre),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Perfil.ruta, arguments: vendedores[argsProd.vendedor]);
                    },
                    child: Text('Ver perfil'),
                  ),
                ], mainAxisAlignment: MainAxisAlignment.spaceBetween,)
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text("Descripcion", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(argsProd.descripcion),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(argsProd.descuento + " de descuento" , style: TextStyle(
                  color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold,),)
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: (MediaQuery.of(context).size.width - 40) / 2,
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
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      child:
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context, Pregunta.ruta, 
                            arguments: ArgsPreguntas(argsProd.pregunta1, argsProd.respuesta1, argsProd.pregunta2, argsProd.respuesta2),
                          );
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => Tarjeta()));
                        },
                        child: Text('Preguntas'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Carrito()));
                    },
                    child: Text('Agregar al carrito'),
                  ),
                )
              )
            ],
          ),
        )
      ),
    );
  }

}