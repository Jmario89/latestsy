import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/estado_controller.dart';
import 'menu.dart';

class Actividades extends StatelessWidget {
  const Actividades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EstadoController estadoController = Get.find();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepOrange),
        backgroundColor: Colors.white,
        title: new Center(
            child: Text(
          '''ACTIVIDADES''',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 0.875,
            fontSize: 36.0,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
            color: Colors.deepOrange,
          ),
        )),
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
                  '''ESTADOS''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 0.875,
                    fontSize: 36.0,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 217, 73, 40),
                  ),
                ),
                SizedBox(height: 25.0),
                GenerarCard(
                    estado: Obx(() => Text(
                          estadoController.estado,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 5,
                            fontSize: 18.0,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            color: Colors.deepOrange,
                          ),
                        )),
                    nombreUser: 'Nombre Usuario'),
                //   IconButton(
                // onPressed: () => estadoController.CambiarEstado(),
                // icon: const Icon(Icons.arrow_back)),
                SizedBox(height: 25.0),
                GenerarCard(
                    estado: Text(
                      "Estado",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 5,
                        fontSize: 18.0,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrange,

                        /* letterSpacing: 0.0, */
                      ),
                    ),
                    nombreUser: 'Nombre Usuario'),
                SizedBox(height: 25.0),
                GenerarCard(
                    estado: Text(
                      "Estado",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 5,
                        fontSize: 18.0,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrange,

                        /* letterSpacing: 0.0, */
                      ),
                    ),
                    nombreUser: 'Nombre Usuario'),
                SizedBox(height: 25.0),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          estadoController.CambiarEstado();
        },
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
  final Widget estado;

  const GenerarCard({Key? key, required this.nombreUser, required this.estado})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: GestureDetector(
          // onTap: () => Navigator.pushNamed(context, this.ruta),
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
                        child: this.estado,
                        color: Colors.deepOrangeAccent.shade100,
                      ))
                ]),
          ),
        ));
  }
}
