import 'package:geolocationtest/movas/services/toilet_service/abstract_toilet_service.dart';
import 'package:geolocationtest/movas/stores/location_store.dart';
import 'package:movas/movas.dart';

class ToiletAction {
  final ToiletService toiletService;
  final LocationStore locationStore;

  ToiletAction(this.toiletService, this.locationStore);


  Future<void> getToiletsForCurrentPosition(){
    var currentPosition = locationStore.currentPosition;
    if(currentPosition!=null){
      return toiletService.getToiletsForPosition(currentPosition);
    }
  }

  factory ToiletAction.of(context)=>ToiletAction(StaticProvider.of(context), StaticProvider.of(context));


}