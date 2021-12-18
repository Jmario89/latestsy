import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:latestsy/Controllers/estado_controller.dart';
import 'package:latestsy/Controllers/tema_controllers.dart';
import 'package:latestsy/actividades.dart';
import 'package:latestsy/chat.dart';
import 'package:latestsy/configuracion.dart';
import 'package:latestsy/home.dart';
import 'package:latestsy/noticias.dart';
import 'package:latestsy/postUsuario.dart';
import 'package:latestsy/registrarse.dart';

import 'login.dart';
import 'menu.dart';

void main() {
  Get.put(TemaController());
  Get.put(EstadoController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    'Login': (context) => Login(),
    'Home': (context) => Home(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: <String, WidgetBuilder>{
        'menu': (BuildContext context) => Menu(),
        'login': (BuildContext context) => Login(),
        'home': (BuildContext context) => Home(),
        'actividades': (BuildContext context) => Actividades(),
        'noticias': (BuildContext context) => Noticias(),
        'chat': (BuildContext context) => Chat(),
        'configuracion': (BuildContext context) => Configuracion(),
        'registarse': (BuildContext context) => Registarse(),
        'postUsuario': (BuildContext context) => PostUsuario(),
      },
    );
  }
}
