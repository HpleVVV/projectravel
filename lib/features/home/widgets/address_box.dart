import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class AddressBox extends StatefulWidget {
  const AddressBox({Key? key}) : super(key: key);
  @override
  State<AddressBox> createState() => _AddressBoxState();
}

class _AddressBoxState extends State<AddressBox> {
  var _address = "";

  Future<void> _updatePosition() async {
    Position pos = await _determinePosition();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(pos.latitude, pos.longitude);
    setState(() {
      Placemark place = placemarks[0];
      _address =
          '${place.street}, ${place.administrativeArea}, ${place.country}';
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        forceAndroidLocationManager: true);
  }

  @override
  void initState() {
    _updatePosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(color: Colors.amber.shade100),
      padding: const EdgeInsets.only(left: 10),
      child: Row(children: [
        const Icon(Icons.location_on_outlined, size: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              _address,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(left: 5, top: 2),
            child: Icon(
              Icons.arrow_drop_down_outlined,
              size: 18,
            ))
      ]),
    );
  }
}
