import 'package:buenro_hotel_booking_test/components/hotel_view_component/hotel_view_widget.dart';
import 'package:buenro_hotel_booking_test/data_models/hotels_screen_model/hotels_screen_model.dart';
import 'package:flutter/material.dart';

sealed class BuneroListWidgetParameter{
  Widget build(BuildContext context);
}

class ListHotelsScreenModelParam extends BuneroListWidgetParameter{
  final List<HotelsScreenModel> hotelsList;
  ListHotelsScreenModelParam({required this.hotelsList});
  
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return HotelViewWidget(
              title:hotelsList[index].title!, 
              pricePerRoom: hotelsList[index].price!, 
              imageUrl: hotelsList[index].image!, 
              isFavorite: false, 
              onFavoriteToggle: () { },
            );
          },
          childCount: hotelsList.length,
        ),
    );
  }

  
}