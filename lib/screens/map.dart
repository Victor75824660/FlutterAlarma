import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FlutterMap(
        options: MapOptions(center: LatLng(60, -0.1), zoom: 54),
        layers: [
          TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/71729475/cl3hvexww00bu14rqi6te68xd/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiNzE3Mjk0NzUiLCJhIjoiY2wzaHVzNGczMHZpcjNrcWlta3Z1ZXJhYyJ9.cgUl0Ucah6pOdpVgJgFaSQ",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiNzE3Mjk0NzUiLCJhIjoiY2wzaHVzNGczMHZpcjNrcWlta3Z1ZXJhYyJ9.cgUl0Ucah6pOdpVgJgFaSQ',
              'id': 'mapbox.mapbox-streets-v8'
            },
            attributionBuilder: (_) {
              return Text("© OpenStreetMap contributors");
            },
          ),
          MarkerLayerOptions(markers: [
            Marker(
                width: 100,
                height: 100,
                point: LatLng(51.5, -0.1),
                builder: (ctx) => Container(
                      child: FlutterLogo(),
                    ))
          ])
        ],
      ),
    );
  }
}
