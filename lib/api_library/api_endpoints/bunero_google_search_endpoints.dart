part of 'package:buenro_hotel_booking_test/api_library/api_base/bunero_api_base.dart';

class GoogleSearchEndpoint extends BuenroApiBase{
    
   Future<List<dynamic>> searchHotelsFromGoogle () async{
    
    final uri =  Uri.https(_baseUrl, '/search.json',{
            "api_key": BuenroEnv.apiKey ,  
            "engine": "google",
            "q": "Hotels",
            "location": "United Kingdom",
            "google_domain": "google.co.uk",
            "gl": "uk",
            "hl": "en"   
          }
       );

      final response = await _get(uri);
      return response; 
   }



}