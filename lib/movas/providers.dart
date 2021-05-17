import 'package:geolocationtest/movas/models/toilets/toilet.dart';
import 'package:geolocationtest/movas/services/http_service/dio_http_service.dart';
import 'package:geolocationtest/movas/services/http_service/http_service.dart';
import 'package:geolocationtest/movas/services/location_service/geolocation_service.dart';
import 'package:geolocationtest/movas/services/location_service/location_service.dart';
import 'package:geolocationtest/movas/services/toilet_service/abstract_toilet_service.dart';
import 'package:geolocationtest/movas/services/toilet_service/refuge_toilet_service.dart';
import 'package:geolocationtest/movas/stores/location_store.dart';
import 'package:movas/movas.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...streams,
  ...services,
  ...stores,
];

List<SingleChildWidget> streams = [
  Provider<PublishSubject<PositionE>>(
    create: (_) => PublishSubject(sync: true),
  ),
  Provider<PublishSubject<ToiletsResponse>>(
    create: (_) => PublishSubject(sync: true),
  ),
];
List<SingleChildWidget> services = [
  Provider<BaseHttpService>(
      lazy: false, create: (context) => MobileDioHttpService()),
  Provider<LocationService>(
      lazy: false,
      create: (context) => GeolocationService(StaticProvider.of(context))),
  Provider<ToiletService>(
      lazy: false,
      create: (context) => RefugeToiletService(
            StaticProvider.of(context),
            StaticProvider.of(context),
          )),
];
List<SingleChildWidget> stores = [
  MyStoreProvider<LocationStore, LocationO>(
      storeBuilder: (context) => LocationStore(StaticProvider.of(context))),
];
