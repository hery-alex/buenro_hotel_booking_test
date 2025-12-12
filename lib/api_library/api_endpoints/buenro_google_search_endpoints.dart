part of 'package:buenro_hotel_booking_test/api_library/api_base/buenro_api_base.dart';

class GoogleSearchEndpoint extends BuenroApiBase{
    
   Future<dynamic> searchHotelsFromGoogle () async{
    
    final uri =  Uri.https(_baseUrl, '/search.json',{
            "api_key": BuenroEnv.apiKey ,  
            "engine": "google",
            "q": "Hotels",
            "location": "United Kingdom",
            "google_domain": "google.co.uk",
            "gl": "uk",
            "hl": "en",
            "device": "mobile"  
          }
       );

      final response = await _get(uri);
      return response; 
   }

   Future<String> getApiKey() async{
    return BuenroEnv.apiKey;
   }



}