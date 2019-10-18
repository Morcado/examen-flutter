import 'package:flutter/material.dart';
import 'package:hola/producto.dart';

import 'menu.dart';

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
              child: Text("Categorias"),
            ),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: GestureDetector(
                      child: Image.network("https://picsum.photos/200"),
                      onTap: () { Navigator.push(context, MaterialPageRoute(builder: (_) => Producto())); }
                      
                    ),
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                ],
              ),
            ),
            Container(
              child: Text("Mas categorias"),
            ),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                ],
              ),
            ),
            Container(
              child: Text("Mas categorias"),
            ),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                  Container(
                    child: Image.network("https://picsum.photos/200")
                  ),
                ],
              ),
            ),
            

          ],
        )
      )
    );
  }
}