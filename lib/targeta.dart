import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Pagar con targeta"),),
      body: SingleChildScrollView(child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Image.asset("assets/images/tarjeta.png"),
        ),
       
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Inserta los digitos de tu tarjeta',
              labelText: 'Tarjeta de debito o credito',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[  
            Column(children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width / 2,
                  child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    hintText: 'Fecha de caducidad',
                    labelText: 'Valido hasta',
                  ),
                ),
              ),
            ],),
            Column(children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width / 2,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Codigo de seguridad',
                    labelText: 'CCV',
                  ),
                ),
              ),
            ],),
            
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Nombre del portador de la tarjeta',
              labelText: 'Nombre',
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        RaisedButton(
          onPressed: () {
          },
          child: Text('Agregar tarjeta'),
        ),
        SizedBox(height: 20.0,),

        ],),

    ));
  }
}