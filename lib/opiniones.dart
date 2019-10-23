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

      body: SingleChildScrollView(child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(argsOpin.nombre, textAlign: TextAlign.left, style: TextStyle(fontSize: 40.0, color: Colors.orange),)
          ),
          Container(
            child: Text("Opinion 1", style: TextStyle(fontSize: 20.0),),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(argsOpin.opinion1,),
          ),
          Container(
            child: Text("Opinion 2", style: TextStyle(fontSize: 20.0),),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(argsOpin.opinion2,),
          ),
          Container(
            child: Text("Agregar comentario", style: TextStyle(fontSize: 20.0),),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Titulo",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Opinion",
              ),
            ),
          ),
          Container(     
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.orange,
                  child: Text("Coentar"), onPressed: (){
                  },),
                RaisedButton(child: Text("Cancelar"), onPressed: (){},)
              ],
            ),
          )
        ],
      ),
      ))
    
      
    );
  }
  
}