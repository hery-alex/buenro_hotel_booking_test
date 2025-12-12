
import 'package:buenro_hotel_booking_test/api_library/api_base/buenro_api_base.dart';
import 'package:buenro_hotel_booking_test/screens/hotels_screen/hotels_screen_events/hotels_screen_events.dart';
import 'package:buenro_hotel_booking_test/screens/hotels_screen/hotels_screen_state/hotels_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HotelsScreenViewModel extends Bloc<HotelsListEvent, HotelsScreenState> {

   GoogleSearchEndpoint googleSearchEndpointHotels = GoogleSearchEndpoint();

   HotelsScreenViewModel() : super(HotelsScreenLoading()) {
    on<LoadHotelList>((event, emit) async {
      try {
        final result = await googleSearchEndpointHotels.searchHotelsFromGoogle();
        emit(HotelsScreenLoaded(hotelItems: result));
      } catch (e) {
        emit(HotelsScreenError(e.toString()));
      }
    });
  }
  
}