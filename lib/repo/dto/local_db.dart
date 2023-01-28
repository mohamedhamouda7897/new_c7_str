import 'package:news_c7_str/models/NewsDataModel.dart';
import 'package:news_c7_str/models/SourcesResponse.dart';
import 'package:news_c7_str/repo/repository.dart';

class LocalData implements BaseRepository{
  @override
  Future<NewsDataModel> getNewsData(String sourceID) {
    // TODO: implement getNewsData
    throw UnimplementedError();
  }

  @override
  Future<SourcesResponse> getSources(String categoryId) {
    // TODO: implement getSources
    throw UnimplementedError();
  }

}