import 'package:flutter/material.dart';

import 'menu.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepOrange),
        backgroundColor: Colors.white,
        title: new Center(
            ),
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
                SizedBox(height: 25.0),
                Text(
                  '''CHAT''',
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
                ),
                SizedBox(height: 25.0),
                GenerarCard(
                  nombreUser: 'Nombre Usuario',
                  ruta: '',
                  mensaje1: 'Mensaje',
                  mensaje2: 'Mensaje',
                ),
                SizedBox(height: 45.0),
                GenerarCard(
                  nombreUser: 'Nombre Usuario',
                  ruta: 'noticias',
                  mensaje1: 'Mensaje',
                  mensaje2: 'Mensaje',
                ),
                SizedBox(height: 25.0),
                // GenerarCard(estado: 'Estado', nombreUser: 'Nombre Usuario'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
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
  final String nombreUser;
  final String mensaje1;
  final String mensaje2;

  final String ruta;

  const GenerarCard(
      {Key? key,
      required this.nombreUser,
      required this.mensaje1,
      required this.mensaje2,
      required this.ruta})
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
            height: 200.0,
            child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    // left: 160.0,
                    top: 20,
                    right: null,
                    bottom: null,
                    width: 141.0,
                    height: 30.14285659790039,
                    child: NombreCard(
                      tituloCard: this.nombreUser,
                    ),
                  ),
                  Positioned(
                      // left: 46.0,
                      top: 50.0,
                      right: null,
                      bottom: null,
                      width: 270.0,
                      height: 127.0,
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(height: 30.0),
                            Text(
                              this.mensaje1,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // height: 5,
                                fontSize: 18.0,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange,

                                /* letterSpacing: 0.0, */
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              this.mensaje1,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // height: 5,
                                fontSize: 18.0,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange,

                                /* letterSpacing: 0.0, */
                              ),
                            ),
                          ],
                        ),
                        color: Colors.deepOrangeAccent.shade100,
                      ))
                ]),
          ),
        ));
  }
}
