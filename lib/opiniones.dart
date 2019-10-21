import 'package:flutter/material.dart';
import 'package:hola/principal.dart';

import 'menu.dart';

class Opinion extends StatelessWidget {
  static const ruta = '/extracto2';
  @override
  Widget build(BuildContext context) {
    final ArgsOpiniones argsOpin = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Opiniones de producto"),),
      drawer: Menu(),

      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), 
            child: Text(argsOpin.nombre, textAlign: TextAlign.left, style: TextStyle(fontSize: 40.0), ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), 
            child: Text("Opinion 1", style: TextStyle(fontSize: 20.0),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), 
            child: Text(argsOpin.opinion1,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), 
            child: Text("Opinion 2", style: TextStyle(fontSize: 20.0),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), 
            child: Text(argsOpin.opinion2,),
          ),
         
          
          
        ],
      ),),
      /* body: Row(
        children: <Widget>[
          SizedBox(width: 20,),
          Column(
            children: <Widget>[
              Text("Casitas de perritos", style: TextStyle(fontSize: 40.0),),
              Text("Opinion 1", style: TextStyle(fontSize: 20.0),),
              Container (
                width: MediaQuery.of(context).size.width*0.9,
                child: Column (
                  children: <Widget>[
                    Text ("ES una casa fansy, pero mi chihuahua la destrozo y ahora tiene un lindo trampolín para dormir por las tardes y casa de campaña para las noches, considero que el material es fácil de limpiar, y que mi perra es la culpable del destrozo le duro 2 meses bien, ahora es multinacional, aun así le sigue encantando.", textAlign: TextAlign.left),
                  ],
                ),
              ),
              Text("Opinion 2", style: TextStyle(fontSize: 20.0),),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
                  children: <Widget>[Text("Es perfecta! Es resistente, fácil de transportar porque se puede doblar debido a que el suelo de abajo se puede quitar entonces la puedes llevar a donde sea, super cómoda y suave por todas partes, aparte de que es bellísima, es justo lo que buscaba para mi perro tamaño mini, es de un tamaño adecuado y cualquier gato o perro raza pequeña (muy pequeña o mini) puede caber ahí, tiene una excelente altura, etc. Mi único inconveniente es que la tela de abajo de donde va el piso removible se ve un poco frágil y siento que a la hora de lavarla se puede dañar pues eso no se puede quitar, pero de ahí en más es perfecta, aparte de que tardó mucho menos de lo esperado, la recomiendo muchísimo")],
                ),
              )
            ],
          ),          
        ],
      ) */
    );
  }
  
}