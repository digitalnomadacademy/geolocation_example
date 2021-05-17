import 'package:flutter/material.dart';
import 'package:geolocationtest/movas/services/location_service/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:movas/movas.dart';
import 'package:movas/provider/provider.dart';

class LocationStore extends Store<LocationO> {
  final PublishSubject<PositionE> position$;

  LocationStore(this.position$) {
    listen(
        position$,
        (PositionE value) =>
            add(LocationO(lat: value.lat, longitude: value.long)));
  }

  LocationO get currentPosition => this.o$[LocationO]?.value;
}

class LocationO {
  final double lat;
  final double longitude;

  const LocationO({
    @required this.lat,
    @required this.longitude,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationO &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          longitude == other.longitude;

  @override
  int get hashCode => lat.hashCode ^ longitude.hashCode;
}
