import 'package:latlong2/latlong.dart';

extension PolylinList on List {
  List<LatLng> toLatLngList() {
    return map((e) => LatLng(e[1].toDouble(), e[0].toDouble())).toList();
  }
}
