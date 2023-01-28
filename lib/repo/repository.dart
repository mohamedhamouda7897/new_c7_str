import '../models/NewsDataModel.dart';
import '../models/SourcesResponse.dart';

abstract class BaseRepository{

  Future<SourcesResponse> getSources(String categoryId);
  Future<NewsDataModel> getNewsData(String sourceID);
}