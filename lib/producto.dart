import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'menu.dart';

class Producto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Producto")),
      drawer: Menu(),
    );
  }

}