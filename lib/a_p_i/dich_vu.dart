import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:project_cuoikhoa/model/covid_list.dart';



//}
abstract class GlobalRepo {
  Future<List<Global>> getGlobalList();
}

class GlobalServices implements GlobalRepo{

  static const _baseUrl = 'api.covid19api.com';
  static const String _GET_COVIDS = '/summary';
  Map worldData;
  @override
  Future<List<Global>> getGlobalList() async {
    Uri uri = Uri.https(_baseUrl, _GET_COVIDS);
    Response response = await http.get(uri);
    List<Global> worldData = covidFromJson(response.body) as List<Global>;
    return worldData;

  }


}