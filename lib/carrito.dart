import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/menu.dart';
import 'data.dart';
import 'final.dart';

class Carrito extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new ListViewCarrito();
  }
}

class ListViewCarrito extends State<Carrito> {
  List<Container> _objetosdDelCarro() {
    int index = 0;
    return productos[0].map((produc) {
      var container = Container(
        decoration: index % 2 == 0? BoxDecoration(color: Colors.black12) : BoxDecoration(color: Colors.white70),
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
                width: MediaQuery.of(context).size.width - 100,
                padding: EdgeInsets.only(bottom: 10.0, left: 20.0),
                child: Text(produc.nombre, style: TextStyle(fontSize: 20.0),),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text("Cantidad: 3"),
              )
            ],
          )
        ],)
      );
      index = index + 1;
      return container;
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrito"),),
      drawer: Menu(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Final()));
        },
        label: Text("Comprar"),
        icon: Icon(Icons.shopping_cart),
        backgroundColor: Colors.orange,
      ),
      body: ListView(children: _objetosdDelCarro(),)
    );
  }
}
