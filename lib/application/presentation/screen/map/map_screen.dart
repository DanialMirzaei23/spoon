import 'package:latlong2/latlong.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../packages/package.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var latLong = LatLng(31.88, 54.38);
    var latLong1 = LatLng(31.87, 54.31);
    return  Column(
            children: [
              Flexible(
                child: FlutterMap(
                  options: MapOptions(center: latLong, zoom: 16.0,
                      bounds: LatLngBounds(latLong, latLong1),
                    boundsOptions: FitBoundsOptions(inside: true)
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: const ['a', 'b', 'c'],
                      backgroundColor: Colors.red,
                    ),
                    MarkerLayer(
                      rotate: true,
                      markers: [
                        Marker(rotate: true,

                          point: latLong,
                          builder: (context) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(Icons.pin_drop,color: Colors.red),

                            );
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ).toScaffold;

  }
}
