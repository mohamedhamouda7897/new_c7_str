import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_c7_str/models/NewsDataModel.dart';
import 'package:news_c7_str/models/SourcesResponse.dart';
import 'package:news_c7_str/shared/constants/constants.dart';

class ApiManager{


 static Future<SourcesResponse> getSources(String categoryId)async{
    Uri URL=Uri.https(BASE, '/v2/top-headlines/sources',
    {"apiKey":APIKEY,"category":categoryId});
    Response response=await http.get(URL);

    try{
      var json=jsonDecode(response.body);
      SourcesResponse sourcesResponse=SourcesResponse.fromJson(json);
      return sourcesResponse;
    }catch(e){
      print(e);
      throw e;
    }

  }


  static Future<NewsDataModel> getNewsData(String sourceID)async{
   Uri URL=Uri.https(BASE, '/v2/everything',{
     "apiKey":APIKEY,
     "sources":sourceID
   });

   Response response= await   http.get(URL);
   var json=jsonDecode(response.body);
   NewsDataModel newsDataModel=NewsDataModel.fromJson(json);
   return newsDataModel;

  }
}