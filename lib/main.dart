import 'package:buenro_hotel_booking_test/l10n/app_localizations.dart';
import 'package:buenro_hotel_booking_test/router/app_router.dart';
import 'package:buenro_hotel_booking_test/theme/primary_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
        onGenerateTitle: (BuildContext context) =>
                AppLocalizations.of(context)!.appTitle,
        localizationsDelegates: [
          AppLocalizations.delegate, 
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'), // English
          Locale('ro'), // Romanian
        ],
      theme: BuneroHotelBookingTheme.primaryThemeData,
      routerConfig: AppRouter().config()
      );
  }
}

