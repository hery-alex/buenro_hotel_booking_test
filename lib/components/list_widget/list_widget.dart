import 'package:buenro_hotel_booking_test/components/list_widget/list_widget_sealed_parametrs.dart';
import 'package:flutter/material.dart';

class BuneroListWidget extends StatelessWidget {
  final String? headlineText;
  final BuneroListWidgetParameter listWidgetParameter;
  const BuneroListWidget({super.key,required this.headlineText,required this.listWidgetParameter});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: headlineText ,
                style:Theme.of(context).textTheme.headlineSmall?.apply(
                      color: Theme.of(context).colorScheme.onPrimary,
                  )
              )
            ),
          ),
        ),
        switch(listWidgetParameter){
          ListHotelsScreenModelParam param => param.build(context),
        }
      ],
    );
  }
}