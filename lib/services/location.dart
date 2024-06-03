import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Location {
   double longitude = 0.0;
   double? latitude = 0.0;
   String? cityName = '';

  Future<void> getCurrentPosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  Future<void> getCityName() async {
    try {
      await getCurrentPosition();
      List<Placemark> placemarks = await placemarkFromCoordinates(latitude!, longitude!);
      Placemark place = placemarks[0];
      cityName = place.locality ?? '';
    } catch (e) {
      print(e);
    }
  }
}
