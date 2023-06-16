import 'package:geocoding/geocoding.dart';
import 'package:core_custom_tools/util/coordinates/endereco.dart';

class ConvertPlacemarkToEndereco {
  static Endereco convert(Placemark p) {
    return Endereco(
        rua: p.street ?? "",
        numero: p.subThoroughfare ?? "",
        bairro: p.subLocality ?? "",
        cidade: p.subAdministrativeArea ?? "",
        estado: p.administrativeArea ?? "",
        pais: p.country ?? "");
  }

  static List<Endereco> convertList(List<Placemark> placemarks) {
    List<Endereco> enderecos = [];
    for (var p in placemarks) {
      enderecos.add(convert(p));
    }
    return enderecos;
  }
}
