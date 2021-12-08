import 'package:flutter/material.dart';

class Registarse extends StatelessWidget {
  const Registarse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white, //COLOCAMOS EL COLOR DEL FONDO
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            Text("Registrese",
                style: new TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 40.0),
            InputNew(texto: 'Nombre'),
            SizedBox(height: 30.0),
            InputNew(texto: 'Apellido'),
            SizedBox(height: 30.0),
            InputNew(texto: 'Correo electronico'),
            SizedBox(height: 30.0),
            InputClave(texto: 'Contraseña'),
            SizedBox(height: 30.0),
            InputClave(texto: 'Confirmar Contraseña'),
            SizedBox(height: 30.0),
            Boton(sizeLetra: 20, texto: 'Registrarse', ruta: 'login'),
            Boton(sizeLetra: 20, texto: 'Iniciar Sesion', ruta: 'login'),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class Boton extends StatelessWidget {
  final String texto;
  final double sizeLetra;
  final String ruta;

  const Boton(
      {Key? key,
      required this.texto,
      required this.sizeLetra,
      required this.ruta})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.pushNamed(context, this.ruta);
        },
        // padding: EdgeInsets.all(22),
        color: Colors.deepOrange,
        child: Text(this.texto,
            style: TextStyle(color: Colors.white, fontSize: this.sizeLetra)),
      ),
    );
  }
}

class InputNew extends StatelessWidget {
  final String texto;

  const InputNew({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      // initialValue: 'some password',
      obscureText: false,
      decoration: InputDecoration(
        hintText: this.texto,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}

class InputClave extends StatelessWidget {
  final String texto;

  const InputClave({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      // initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: this.texto,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}
