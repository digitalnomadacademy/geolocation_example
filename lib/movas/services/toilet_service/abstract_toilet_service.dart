import 'package:geolocationtest/movas/services/location_service/location_service.dart';
import 'package:geolocationtest/movas/stores/location_store.dart';

abstract class ToiletService {

  Future<void> getToiletsForPosition(LocationO position);

}