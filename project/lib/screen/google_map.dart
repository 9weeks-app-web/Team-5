// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class GoogleMapComponent extends StatefulWidget {
//   final String address;

//   GoogleMapComponent({super.key, required this.address});

//   @override
//   State<GoogleMapComponent> createState() => _GoogleMapComponentState();
// }

// class _GoogleMapComponentState extends State<GoogleMapComponent> {
//   final Completer<GoogleMapController> _controller = Completer();

//   @override
//   void initState() {
//     super.initState();
//     _getLatLngFromAddress(widget.address);
//   }

//   Future<LatLng> _getLatLngFromAddress(String address) async {
//   List<Location> locations = await locationFromAddress(address);
//   return LatLng(locations[0].latitude, locations[0].longitude);
// }


//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _getLatLngFromAddress(widget.address),
//       builder: (BuildContext context, AsyncSnapshot<LatLng> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         } else if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         } else {
//           return GoogleMap(
//             onMapCreated: (GoogleMapController controller) {
//               _controller.complete(controller);
//             },
//             initialCameraPosition: CameraPosition(
//               target: snapshot.data!,
//               zoom: 11.0,
//             ),
//             markers: Set.from([
//               Marker(markerId: MarkerId('marker'), position: snapshot.data!),
//             ]),
//           );
//         }
//       },
//     );
//   }
// }
