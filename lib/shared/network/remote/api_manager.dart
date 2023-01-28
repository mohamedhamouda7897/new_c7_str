import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_c7_str/models/NewsDataModel.dart';
import 'package:news_c7_str/models/SourcesResponse.dart';
import 'package:news_c7_str/repo/repository.dart';
import 'package:news_c7_str/shared/constants/constants.dart';

class ApiManager{

  BaseRepository? baseRepository;

  ApiManager({this.baseRepository});


}