import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Mercado';

    return MaterialApp(
    
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: LoginScreen(),
      ),
    );
  }
}

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
              backgroundImage: NetworkImage("https://picsum.photos/500"),
              minRadius: 90,
              maxRadius: 150,
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'User'
                ),
                // Validacion de la contraseña funcion anonima
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter user';
                  }
                  else {
                    if (value != 'admin') {
                      return 'Incorrect user';
                    }
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye),

                ),
                obscureText: true,
                // Validacion de la contraseña funcion anonima
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter user';
                  }
                  else {
                    if (value != 'admin') {
                      return 'Incorrect user';
                    }
                  }
                  return null;
                },
              ),
            ),
            
            
            
            SizedBox(height: 20.0,),
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
          ],
        ),
      )
    );
  }
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 400.0,
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 3,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(100, (index) {
                  return Center(
                    child: Text(
                      '$index',
                      style: Theme.of(context).textTheme.headline,
                    ),
                  );
                }),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 900.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.orange,
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