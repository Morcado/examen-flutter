import 'package:flutter/material.dart';
import 'package:hola/principal.dart';
import 'package:hola/registro.dart';

// Create a Form widget.
class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() {
    return LoginScreenState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class LoginScreenState extends State<LoginScreen> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.

    return Form(
      key: _formKey,
        //padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60.0,),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/mercado.jpg"),
              minRadius: 90, maxRadius: 150,
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Usuario'),
                // Validacion de la contraseña funcion anonima
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Introduce usuario';
                  }
                  else {
                    if (value != 'admin') {
                      return 'Usuario incorrecto';
                    }
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  //suffixIcon: Icon(Icons.remove_red_eye),
                ),
                obscureText: true,
                // Validacion de la contraseña funcion anonima
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Inserta contraseña';
                  }
                  else {
                    if (value != 'admin') {
                      return 'Contraseña incorrecta';
                    }
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Principal()),
                    );
                  }
                },
                child: Text('Login'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Registro()),);
                },
                child: Text('Registro'),
              ),
            ],)
          ],
        ),
      )
    );
  }
}