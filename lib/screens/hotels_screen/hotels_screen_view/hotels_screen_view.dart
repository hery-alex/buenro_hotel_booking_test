import 'package:auto_route/auto_route.dart';
import 'package:buenro_hotel_booking_test/components/list_widget/list_widget.dart';
import 'package:buenro_hotel_booking_test/components/list_widget/list_widget_sealed_parametrs.dart';
import 'package:buenro_hotel_booking_test/screens/hotels_screen/hotels_screen_events/hotels_screen_events.dart';
import 'package:buenro_hotel_booking_test/screens/hotels_screen/hotels_screen_state/hotels_screen_state.dart';
import 'package:buenro_hotel_booking_test/screens/hotels_screen/hotels_screen_view_model/hotels_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HotelsScreenViewModel()..add(LoadHotelList()),
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<HotelsScreenViewModel, HotelsScreenState>(
                    builder: (context, state) {
      
                       if (state is HotelsScreenLoading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state is HotelsScreenLoaded) {  
                        return BuneroListWidget(
                          headlineText: "Hotels List",
                          listWidgetParameter:ListHotelsScreenModelParam(hotelsList:state.hotelItems,
                          ),
                        );
                      } else if (state is HotelsScreenError) {
                        return Center(child: Text(state.message));
                      }
                      
                      return const SizedBox();   
      
            }),
          ),
        ],
      ),
    );
  }
}