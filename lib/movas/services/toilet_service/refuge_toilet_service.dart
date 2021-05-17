import 'package:flutter/material.dart';
import 'package:geolocationtest/movas/models/toilets/toilet.dart';
import 'package:geolocationtest/movas/services/http_service/http_service.dart';
import 'package:geolocationtest/movas/services/toilet_service/abstract_toilet_service.dart';
import 'package:geolocationtest/movas/stores/location_store.dart';
import 'package:movas/movas.dart';

class RefugeToiletService implements ToiletService {
  final BaseHttpService httpService;
  final PublishSubject<ToiletsResponse> toiletsResponse$;
  RefugeToiletService(this.httpService, this.toiletsResponse$);

  @override
  Future<void> getToiletsForPosition(LocationO position) async {
    var request =
        GetToiletsRequest(lat: position.lat, long: position.longitude);
    var response = await httpService.get(
        request: request, converter: (map) => ToiletsResponse.fromMap(map));
    print(response);
    toiletsResponse$.add(response);
  }
}

class GetToiletsRequest extends BaseHttpRequest {
  final double lat, long;

  GetToiletsRequest({
    @required this.lat,
    @required this.long,
  }) : super(endpoint: "/restrooms/by_location");

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'lat': this.lat,
      'lng': this.long,
    } as Map<String, dynamic>;
  }
}
