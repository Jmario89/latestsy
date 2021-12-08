import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TemaController extends GetxController {
  // ignore: non_constant_identifier_names
  var _a = 255.obs;
  var _r = 255.obs;
  var _g = 255.obs;
  var _b = 255.obs;
  var _color = Colors.white;
  // var _colorprueba = Color.fromARGB(50, 0, 0, 0);

  int get aColor => _a.value;
  int get rColor => _r.value;
  int get gColor => _g.value;
  int get bColor => _b.value;
  Color get colorTema => _color;

  // ignore: non_constant_identifier_names
  TemaOscuro() {
    _a.value = 200;
    _r.value = 0;
    _g.value = 0;
    _b.value = 0;
  }

  // ignore: non_constant_identifier_names
  TemaClaro() {
    _a.value = 255;
    _r.value = 255;
    _g.value = 255;
    _b.value = 255;
  }
}
