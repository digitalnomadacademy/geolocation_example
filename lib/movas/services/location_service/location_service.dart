import 'package:flutter/material.dart';

abstract class LocationService {
  Future<void> getLocationPermission();
  Future<PositionE> fetchCurrentLocation();
}

class PositionE {
  final double long,lat;

  const PositionE({
    @required this.long,
    @required this.lat,
  });
}