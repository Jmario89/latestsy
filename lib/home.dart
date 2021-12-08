import 'package:flutter/material.dart';

import 'menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.deepOrange),
          backgroundColor: Colors.white,
          title: new Center(
              child: Text(
            '''HOME''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 0.875,
              fontSize: 36.0,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 217, 73, 40),

              /* letterSpacing: 0.0, */
            ),
          )),
          // leading: Icon(Icons.settings,color: Colors.deepOrange,size: 35),
          actions: [
            // ignore: deprecated_member_use
            new FlatButton(
              child: Container(
                  padding: EdgeInsets.all(5.0),
                  width: 60,
                  height: 60,
                  child:
                      Icon(Icons.settings, color: Colors.deepOrange, size: 35)),
              onPressed: () {
                Navigator.pushNamed(context, 'configuracion');
              },
            ),
          ],
        ),
        drawer: MenuLateral(),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              Column(
                children: [
                  SizedBox(height: 20.0),
                  Icon(Icons.house, color: Colors.deepOrange, size: 150),
                  SizedBox(height: 30.0),
                  GenerarCard(
                      tituloCard: 'ACTIVIDADES',
                      ruta: 'actividades',
                      nombreImagen:
                          'bfabe2144f448647be988ce11e714f6288d107e7.png'),
                  SizedBox(height: 30.0),
                  GenerarCard(
                      tituloCard: 'POST USUARIOS',
                      ruta: 'postUsuario',
                      nombreImagen:
                          '6746595b1505b50ae1b6d408a2ff6a1b80db1c9b.png'),
                  SizedBox(height: 30.0),
                  GenerarCard(
                      tituloCard: 'CHATS',
                      ruta: 'chat',
                      nombreImagen:
                          'c7f0aa05919c2469c5d01411250faaef590da9e9.png'),
                  SizedBox(height: 30.0),

                ],
              ),
            ],
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

class GenerarCard extends StatelessWidget {
  final String tituloCard;
  final String ruta;
  final String nombreImagen;

  const GenerarCard(
      {Key? key,
      required this.tituloCard,
      required this.ruta,
      required this.nombreImagen})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, this.ruta),
          child: Container(
            width: 319.0,
            height: 110.0,
            child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 160.0,
                    top: 42.42856979370117,
                    right: null,
                    bottom: null,
                    width: 141.0,
                    height: 30.14285659790039,
                    child: NombreCard(
                      tituloCard: this.tituloCard,
                    ),
                  ),
                  Positioned(
                    left: 46.0,
                    top: 22.0,
                    right: null,
                    bottom: null,
                    width: 67.0,
                    height: 67.0,
                    child: GenerarImagen(
                      nombreImagen: this.nombreImagen,
                    ),
                  )
                ]),
          ),
        ));
  }
}

class GenerarImagen extends StatelessWidget {
  final String nombreImagen;

  const GenerarImagen({Key? key, required this.nombreImagen}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67.0,
      height: 67.0,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Image.asset(
          'assets/images/' + this.nombreImagen,
          color: null,
          fit: BoxFit.contain,
          width: 67.0,
          height: 67.0,
          colorBlendMode: BlendMode.dstATop,
        ),
      ),
    );
  }
}
