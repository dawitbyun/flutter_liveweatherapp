import 'package:geolocator/geolocator.dart';

class Location {
  double latitude; //property
  double longitude; //property

  //future의 default data type은 dynamic

  // we can only await on method that returns future
  // so we made getCurrentLocation as future, in order for

  //  Future<dynamic> getLocationWeather() async {
  //     Location location = Location();
  //     await location.getCurrentLocation();

  // to use

  Future<void> getCurrentLocation() async {
    //class method
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy
              .low); // The higher it is, the more battery the phone will consume
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      //e is short for exceptions
      print(e);
    }
  }
}
