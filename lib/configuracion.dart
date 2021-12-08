import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latestsy/Controllers/tema_controllers.dart';

import 'menu.dart';

class Configuracion extends StatefulWidget {
  const Configuracion({Key? key}) : super(key: key);

  @override
  _ConfiguracionState createState() => _ConfiguracionState();
}

bool statusTema = false;
bool statusUbicacion = true;
bool statusNotificaciones = false;

class _ConfiguracionState extends State<Configuracion> {
  @override
  Widget build(BuildContext context) {
    TemaController temaController = Get.find();

    return Obx(() => Scaffold(
          backgroundColor: Color.fromARGB(
              temaController.aColor,
              temaController.rColor,
              temaController.gColor,
              temaController.bColor),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.deepOrange),
            backgroundColor: Color.fromARGB(
                temaController.aColor,
                temaController.rColor,
                temaController.gColor,
                temaController.bColor),
            title: new Center(),
            actions: [
              // ignore: deprecated_member_use
              new FlatButton(
                child: Container(
                    padding: EdgeInsets.all(5.0),
                    width: 60,
                    height: 60,
                    child: Icon(Icons.settings,
                        color: Colors.deepOrange, size: 35)),
                onPressed: () {
                  Navigator.pushNamed(context, 'configuracion');
                },
              ),
            ],
          ),
          drawer: MenuLateral(),
          body: Center(
              child: ListView(
            shrinkWrap: false,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              SizedBox(height: 25.0),
              Text(
                '''CONFIGURACIONES''',
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
              Container(
                width: 300.0,
                // height: 165,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Tema oscuro',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 0.875,
                              fontSize: 28.0,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              color: Colors.deepOrange,
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                        Switch(
                          value: statusTema,
                          onChanged: (value) {
                            setState(() {
                              statusTema = value;
                              if (value == true) {
                                temaController.TemaOscuro();
                              } else {
                                temaController.TemaClaro()();
                              }
                            });
                          },
                          activeColor: Colors.deepOrange,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Activar ubicación        ',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 0.875,
                              fontSize: 28.0,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              color: Colors.deepOrange,
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                        Switch(
                          value: statusUbicacion,
                          onChanged: (value) {
                            setState(() {
                              statusUbicacion = value;
                            });
                          },
                          activeColor: Colors.deepOrange,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Activar notificaciones',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 0.875,
                              fontSize: 28.0,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              color: Colors.deepOrange,
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                        Switch(
                          value: statusNotificaciones,
                          onChanged: (value) {
                            setState(() {
                              statusNotificaciones = value;
                            });
                          },
                          activeColor: Colors.deepOrange,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.deepOrange,
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ));
  }
}
