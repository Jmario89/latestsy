import 'package:flutter/material.dart';
import 'package:latestsy/actividades.dart';
import 'package:latestsy/chat.dart';
import 'package:latestsy/login.dart';
import 'package:latestsy/postUsuario.dart';

import 'home.dart';

class Menu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Home(),
        ));
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(height: 25.0),
          new ListTile(
            title: Generarmenu(imagen: 'home1.png', tituloMenu: 'HOME'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Home()));
            },
          ),
          new ListTile(
            title: Generarmenu(
                imagen: 'bfabe2144f448647be988ce11e714f6288d107e7.png',
                tituloMenu: 'ACTIVIDADES'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Actividades()));
            },
          ),
          new ListTile(
            title: Generarmenu(
                imagen: '6746595b1505b50ae1b6d408a2ff6a1b80db1c9b.png',
                tituloMenu: 'POST USUARIOS'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PostUsuario()));
            },
          ),
          new ListTile(
            title: Generarmenu(
                imagen: 'c7f0aa05919c2469c5d01411250faaef590da9e9.png',
                tituloMenu: 'CHATS'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Chat()));
            },
          ),
          new ListTile(
            title: Generarmenu(
                imagen: 'e52cfa2792e0902e3693ab9983a837ba47122a75.png',
                tituloMenu: 'Cerrar Sesión'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Login()));
            },
          ),
        ],
      ),
    );
  }
}

class GenerarmenuSesion extends StatelessWidget {
  final String tituloMenu;
  final String imagen;

  const GenerarmenuSesion(
      {Key? key, required this.tituloMenu, required this.imagen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: GestureDetector(
          child: Container(
            width: 100,
            height: 100,
            child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 97,
                    //  top: 42.42856979370117,
                    right: null,
                    bottom: null,
                    width: 141.0,
                    height: 50,
                    child: NombreCard(
                      tituloCard: this.tituloMenu,
                    ),
                  ),
                  Positioned(
                    left: 36.0,
                    //  top: 22.0,
                    right: null,
                    bottom: null,
                    width: 50.0,
                    height: 50.0,
                    child: GenerarImagen(
                      nombreImagen: this.imagen,
                    ),
                  )
                ]),
          ),
        ));
  }
}

class Generarmenu extends StatelessWidget {
  final String tituloMenu;
  final String imagen;

  const Generarmenu({Key? key, required this.tituloMenu, required this.imagen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: GestureDetector(
          child: Container(
            width: 100,
            height: 100,
            child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 97,
                    //  top: 42.42856979370117,
                    right: null,
                    bottom: null,
                    width: 141.0,
                    height: 50,
                    child: NombreCard(
                      tituloCard: this.tituloMenu,
                    ),
                  ),
                  Positioned(
                    left: 36.0,
                    //  top: 22.0,
                    right: null,
                    bottom: null,
                    width: 50.0,
                    height: 50.0,
                    child: GenerarImagen(
                      nombreImagen: this.imagen,
                    ),
                  )
                ]),
          ),
        ));
  }
}

class NombreCard extends StatelessWidget {
  final String tituloCard;

  const NombreCard({Key? key, required this.tituloCard}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      this.tituloCard,
      overflow: TextOverflow.visible,
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.5,
        fontSize: 21.0,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 217, 73, 40),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
