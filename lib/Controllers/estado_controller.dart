import 'package:get/get.dart';

class EstadoController extends GetxController {
  var _estado = "Estado Activo".obs;

  String get estado => _estado.value;

  // ignore: non_constant_identifier_names
  CambiarEstado() {
    if (_estado.value == "Estado Activo") {
      _estado.value = "Estado Inactivo";
    } else {
      _estado.value = "Estado Activo";
    }
  }
}
