import 'package:flutter/material.dart';
import 'package:hola/producto.dart';
import 'menu.dart';

class ArgsProducto {
  final String foto;
  final String nombre;
  final String descripcion;
  final String descuento;
  final String opinion1;
  final String opinion2;
  final String pregunta1;
  final String respuesta1;
  final String pregunta2;
  final String respuesta2;
  ArgsProducto(this.foto, this.nombre, this.descripcion, this.descuento, this.opinion1, this.opinion2, this.pregunta1, this.respuesta1, this.pregunta2, this.respuesta2);
}

class ArgsOpiniones {
  final String nombre;
  final String opinion1;
  final String opinion2;
  ArgsOpiniones(this.nombre, this.opinion1, this.opinion2, );
}

class ArgsPreguntas {
  final String pregunta1;
  final String respuesta1;
  final String pregunta2;
  final String respuesta2;
  ArgsPreguntas(this.pregunta1, this.respuesta1, this.pregunta2, this.respuesta2);
}

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
            SizedBox(height: 20.0,),
            Row(children: <Widget>[
              SizedBox(width: 20),
              Container(child: Text(
                "Accesorios para perros",
                style: TextStyle(fontSize: 20.0),
              ))
            ],),
           
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/cama.jpg"),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, Producto.ruta, arguments: ArgsProducto(
                        'cama.jpg',
                        'Cojín de Algodón',
                        'Con forma de hot-dog, cama del animal doméstico de la perrera del perro del gato del nido del perrito de la casa, cojín de la estera caliente almohadilla',
                        '40%',
                        'La foto del producto en venta aparenta ser más grande, aún así el producto cumple con lo que ofrece.',
                        'La primera foto no concuerda con el producto entregado.',
                        '¿De que collor es?',
                        'azul',
                        'Cuantos perros caben',
                        '3',
                      ));
                    }
                  ),),
                  Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/casita.jpg"),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, Producto.ruta, arguments: ArgsProducto(
                        'casita.jpg',
                        'Barlingrock Pet Cat Dog Puppy Bed',
                        'En forma de casa interior Calentamiento Cálido Sweet Room Cojín Durable de tela Lavable Portátil Almohadilla de descanso Nido Caja de almohadilla Almohadilla de perrera Perrito para peluche Perro pequeño Gatito',
                        '81%',
                        'Es perfecta! Es resistente, fácil de transportar porque se puede doblar debido a que el suelo de abajo se puede quitar entonces la puedes llevar a donde sea, super cómoda y suave por todas partes, aparte de que es bellísima, es justo lo que buscaba para mi perro tamaño mini, es de un tamaño adecuado y cualquier gato o perro raza pequeña (muy pequeña o mini) puede caber ahí, tiene una excelente altura, etc. Mi único inconveniente es que la tela de abajo de donde va el piso removible se ve un poco frágil y siento que a la hora de lavarla se puede dañar pues eso no se puede quitar, pero de ahí en más es perfecta, aparte de que tardó mucho menos de lo esperado, la recomiendo muchísimo',
                        'ES una casa fansy, pero mi chihuahua la destrozo y ahora tiene un lindo trampolín para dormir por las tardes y casa de campaña para las noches, considero que el material es fácil de limpiar, y que mi perra es la culpable del destrozo le duro 2 meses bien, ahora es multinacional, aun así le sigue encantando.',
                        '¿De que collor es?',
                        'verde',
                        'Cuantos perros caben',
                        '22',
                      ));
                    }
                  ),),
                   Container(child: GestureDetector(
                    child: Container(
                      height: 200.0, width: 200.0,
                      child: Image.asset("assets/images/peluhe.jpg"),
                    ),
                    onTap: () { 
                      Navigator.pushNamed(context, Producto.ruta, arguments: ArgsProducto(
                        'peluhe.jpg',
                        'SpinMaster Plush Gund Cozy',
                        '¡Un tierno acompañante hecho de un material de felpa especial, tan lindo como un mejor amigo!. Estos juguetones amigos son de 8 pulgadas. Son perfectos para cualquier sesión de acurrucamient',
                        '40%',
                        'Bueno.',
                        'Bonito.',
                        '¿De que collor es?',
                        'verde',
                        'Cuantos perros caben',
                        '22',
                      ));
                    }
                  ),),  
                ],
              ),
            ),
            SizedBox(height: 20.0,),
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