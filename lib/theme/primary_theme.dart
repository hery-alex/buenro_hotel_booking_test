import 'package:flutter/material.dart';

class BuneroHotelBookingTheme {

   static ThemeData primaryThemeData = themeData(colorScheme,textTheme);


   static ColorScheme colorScheme = const ColorScheme(
    surface: Color.fromARGB(255, 237, 241, 243),
    onSurface: Color(0xff0E1C21),
    brightness: Brightness.light, 
    primary: Color.fromARGB(255, 170, 221, 247), 
    onPrimary: Color.fromARGB(255, 39, 39, 39), 
    primaryContainer: Color.fromARGB(255, 26, 130, 235),
    secondary: Color(0xff899194), 
    onSecondary: Color(0xffE7E9EA), 
    error: Colors.red, 
    onError: Color(0xff0B1519)
    );

    
   static TextTheme textTheme = const TextTheme(
     headlineLarge: TextStyle(
      fontSize: 34
     ),
     headlineMedium:TextStyle(
      fontSize: 32
     ),
     headlineSmall: TextStyle(
      fontSize: 18
     ),
     bodyLarge: TextStyle(
      fontSize: 16,
     ),
     bodyMedium: TextStyle(
      fontSize: 12,
     )
   ); 

   static ThemeData themeData(ColorScheme colorScheme,TextTheme textTheme) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme
    );
  }
}