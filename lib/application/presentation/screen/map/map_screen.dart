import 'package:dio/dio.dart';
import 'package:latlong2/latlong.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/extension/polyline_list.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/map_ir_api.dart';

import '../../../packages/package.dart';

class MapScreen extends StatefulWidget {
  MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Dio dio = Dio();
  List sourcePosition = [31.943030, 54.305146];
  List destinationPosition = [31.885807, 54.315462];
  List<LatLng>? routeLatLngList;

  @override
  void initState() {
    super.initState();
    mapIrApiPoints().then((value) {
      setState(() {
        routeLatLngList = value.toLatLngList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    mapIrApiPoints();

    List<LatLng> bound = [LatLng(31.8819, 54.3839), LatLng(31.8754, 54.3710)];
    LatLng address1 = LatLng(31.8804, 54.3796);
    LatLng address2 = LatLng(31.8760, 54.3758);
    return Column(
      children: [
        Flexible(
          child: FlutterMap(
            options: MapOptions(
                // center: bound[0],
                zoom: 15.0,
                bounds: LatLngBounds(
                    LatLng(sourcePosition[0], sourcePosition[1]),
                    LatLng(destinationPosition[0], destinationPosition[1])),
                boundsOptions: FitBoundsOptions()),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: const ['a', 'b', 'c'],
                backgroundColor: Colors.grey,
              ),
              PolylineLayer(polylines: [
                Polyline(
                    points: routeLatLngList ?? [],
                    color: Colors.red,
                    strokeWidth: 5)
              ]),
              MarkerLayer(
                rotate: true,
                markers: [
                  Marker(
                    width: 40,
                    height: 40,
                    rotate: true,
                    point: LatLng(sourcePosition[0], sourcePosition[1]),
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: GenerateDataColors.orange_primary.toHex,
                          shape: BoxShape.circle,
                          // border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                  Marker(
                    width: 32,
                    height: 32,
                    rotate: true,
                    point:
                        LatLng(destinationPosition[0], destinationPosition[1]),
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xffFE7825).withOpacity(.5),
                          shape: BoxShape.circle,
                          // border: Border.all(color: Colors.black, width: 7),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: GenerateDataColors.orange_primary.toHex,
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ).toScaffold;
  }

  Future<List> mapIrApiPoints() async {
    Response response = await dio.get(
        '${MapIrApiConstants.mapIrApiUrl}/${sourcePosition[1]},${sourcePosition[0]};${destinationPosition[1]},${destinationPosition[0]}',
        queryParameters: MapIrApiConstants.queryParams,
        options: Options(headers: MapIrApiConstants.header));

    List data = response.data['routes'][0]['geometry']['coordinates'];
    return data;
  }
}
