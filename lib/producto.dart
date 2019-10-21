import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hola/principal.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Image.asset("assets/images/" + argsProd.foto),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(argsProd.nombre, style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Descripcion", style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(argsProd.descripcion),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Descuento de " + argsProd.descuento, style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 20.0,),
              Row(
                children: <Widget>[
                  SizedBox(width: 20.0,),
                  Column(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context, Opinion.ruta, 
                            arguments: ArgsOpiniones(argsProd.nombre, argsProd.opinion2, argsProd.opinion2)
                          );
/*                           Navigator.push  (
                            context, 
                            
                            MaterialPageRoute(builder: (context) => Opinion()),); */
                        },
                        child: Text('Opiniones'),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Pagar'), onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
            ],
          ),
        )
      ),
    );
  }

}