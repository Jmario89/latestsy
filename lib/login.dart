import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Login extends StatelessWidget {
  //Inicializacion de firebase
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Center(
              child: Column(
            children: [
              Text("Bienvenido a",
                  style: new TextStyle(fontSize: 30, color: Colors.black)),
              Text("LATESTSY",
                  style: new TextStyle(fontSize: 30, color: Colors.black))
            ],
          ))
          // Image(
          //       image: NetworkImage('https://raw.githubusercontent.com/putraxor/flutter-login-ui/master/assets/logo.png'),
          //     )
          ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'alucard@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      // initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
        padding: EdgeInsets.all(22),
        color: Colors.deepOrange,
        child: Text('Iniciar Sesion', style: TextStyle(color: Colors.white)),
      ),
    );

    final loginButtonCrear = Padding(
      padding: EdgeInsets.symmetric(),
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'registarse');
        },
        padding: EdgeInsets.all(12),
        color: Colors.deepOrange,
        child:
            Text('Crear cuenta nueva', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white, //COLOCAMOS EL COLOR DEL FONDO
      body: FutureBuilder(
          future: _firebaseApp,
          builder: (context, snap) {
            if (snap.hasError) {
              return Text('Error en Firebase: ${snap.error.toString()}');
            } else if (snap.connectionState == ConnectionState.done) {
              return Center(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 24.0, right: 24.0),
                  children: <Widget>[
                    logo,
                    SizedBox(height: 48.0),
                    email,
                    SizedBox(height: 8.0),
                    password,
                    SizedBox(height: 24.0),
                    loginButton,
                    SizedBox(height: 3.0),
                    loginButtonCrear
                  ],
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}
