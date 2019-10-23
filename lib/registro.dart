import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hola/principal.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Registro")),
      body: Form(child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nombre",
                    hintText: "Ej. Juan Perz",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Correo",
                    hintText: "correo@ejemplo.com",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Celular",
                    hintText: "Ej. 828282919",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: "Fecha de nacimiento",
                    hintText: "10/01/10",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Edad",
                    hintText: "22",
                  ),
                ),
              ),
              Container(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.orange,
                      child: Text("Registrarse"), onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Principal()));
                      },),
                    RaisedButton(child: Text("Cancelar"), onPressed: (){},)
                  ],
                ),
              )
            ],
          ),
        ),
      ),)
    );
  }

}