import 'package:buenro_hotel_booking_test/data_models/hotels_screen_model/hotels_screen_model.dart';

abstract class HotelsScreenState {
   List<Object?> get hotelsItemsList => [];
}

class HotelsScreenLoading extends HotelsScreenState {}

class HotelsScreenLoaded extends HotelsScreenState {
  final List<HotelsScreenModel> hotelItems;

  HotelsScreenLoaded({
    this.hotelItems = const [],
  });

    HotelsScreenLoaded copyWith({
     List<HotelsScreenModel>? hotelItems,
  }) {
    return HotelsScreenLoaded(
      hotelItems: hotelItems ?? this.hotelItems,
    );
  }

  @override
    bool operator ==(Object other)=> 
    other is HotelsScreenLoaded && 
    hotelItems == other.hotelItems;  

  @override
  List<Object?> get hotelsItemsList => hotelItems;
  
  @override
  int get hashCode => Object.hash(hotelItems,hotelsItemsList);
  
}

class HotelsScreenError extends HotelsScreenState {
  final String message;
  HotelsScreenError(this.message);

  @override
  List<Object?> get hotelsItemsList => [message];
}