import 'package:geolocationtest/movas/services/location_service/location_service.dart';
import 'package:movas/movas.dart';

class BootstrapAction {
  final LocationService locationService;

  BootstrapAction(this.locationService);

  Future<void> getMyCurrentPosition() {
    return locationService.fetchCurrentLocation();
  }

  factory BootstrapAction.of(context)=>BootstrapAction(StaticProvider.of(context));
}
