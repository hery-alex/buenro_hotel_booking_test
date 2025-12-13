part of 'package:buenro_hotel_booking_test/api_library/api_base/buenro_api_base.dart';

class GoogleSearchEndpoint extends BuenroApiBase{
    
   Future<List<HotelsScreenModel>> searchHotelsFromGoogle () async{
    
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
      List<HotelsScreenModel> resultList = [];
      for(var singleHotel in json.decode(response)["answer_box"]["hotels"]){
       resultList.add(HotelsScreenModel.fromJson(singleHotel));
      }
      return resultList; 
   }


}