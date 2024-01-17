import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:projet/screens/tips.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key? key}) : super(key: key);

  @override
  _CurrentLocationScreenState createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  late GoogleMapController googleMapController;

  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(36.849558416177466, 10.18853855387803), zoom: 12);

  Set<Marker> markers = {};
  List<Marker> initialMarkers = [];

  @override
  void initState() {
    super.initState();
    
    _getVetClinics(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 237, 154, 9),
            elevation: 2,
            shadowColor: Colors.white,
            leading: IconButton(
            icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
          ),
            title: const Text("Google maps",style: TextStyle(color: Colors.white,fontFamily: ''),)),
      body: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        markers: markers,
        zoomControlsEnabled: false,
        mapType: MapType.hybrid,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          Position position = await _determinePosition();

          googleMapController
                          .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 14)));


          markers.clear();
          markers.addAll(initialMarkers);

          markers.add(Marker(markerId: const MarkerId('currentLocation'),position: LatLng(position.latitude, position.longitude),icon: await BitmapDescriptor.fromAssetImage(
          const ImageConfiguration(devicePixelRatio:0.5 ),'assets/currentL.png'), ));

          setState(() {});

        },
        backgroundColor: Colors.white,
        label: const Text("My position"),
        icon: const Icon(Icons.location_on, color: Color.fromARGB(255, 237, 154, 9), size: 30)
      ),
     
    );
  }
  
  
  
   Future<void> _getVetClinics() async {
    // Récupérer les données de Firestore
    final clinics = await FirebaseFirestore.instance.collection('VetClinic').get();
    for (final clinic in clinics.docs) {
      final point = clinic['point'] as GeoPoint; 
      final name = clinic['nom'] as String; 
      final address = clinic['adresse'] as String;
      final tel = clinic['tel'] as String; 
       Marker marker = Marker(
        markerId: MarkerId(clinic.id),
        position: LatLng(point.latitude, point.longitude),
        icon: await BitmapDescriptor.fromAssetImage(
          const ImageConfiguration(devicePixelRatio:0.5 ),'assets/vetLoc.png'),
        infoWindow: InfoWindow(
          title: name,
          snippet: address,
        ),
        onTap: () {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(name, style: TextStyle(color: Color.fromARGB(255, 237, 154, 9),fontFamily: '')),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.mail, color: Colors.black),
                SizedBox(width: 8),
                Expanded(child: Text('Adress : $address',overflow: TextOverflow.ellipsis,)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children:<Widget>[
                Icon(Icons.phone, color: Colors.black),
                SizedBox(width: 8),
                Expanded(child: Text("Phone : $tel",overflow: TextOverflow.ellipsis,)),
              ],
            ),
            SizedBox(height: 8),
            Row(
                    children: <Widget>[
                      Icon(Icons.check_circle, color: Colors.green),
                      SizedBox(width: 8),
                      Text('Open', style: TextStyle(color: Colors.green)),
                    ],
                  )
                
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); 
            },
            child: Text('Close', style: TextStyle(color: Color.fromARGB(255, 237, 154, 9))),
          ),
        ],
      );
    },
  );
},

      );
       markers.add(marker);
      initialMarkers.add(marker);
    }
    setState(() {});
  }
  
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }
}