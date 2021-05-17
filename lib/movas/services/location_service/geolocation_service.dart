import 'package:geolocationtest/movas/services/location_service/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:movas/movas.dart';

class GeolocationService implements LocationService {
  final PublishSubject<PositionE> locationResult$;

  GeolocationService(this.locationResult$){
    getLocationPermission();
  }

  @override
  Future<PositionE> fetchCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition();
    var positionE = PositionE(lat: 45.444995, long: 15.5028305);
    locationResult$.add(positionE);

    return positionE;
  }

  @override
  Future<void> getLocationPermission() async {
    var permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return Geolocator.requestPermission();
    }
  }
}
