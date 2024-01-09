import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:covid_app/utils/api_url.dart';
import '../models/world_stats_model.dart';

class StatsServices{

  Future<WorldStatsModel> fetchWorldStatsRecords () async {

    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return WorldStatsModel.fromJson(data);
    }else{
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> countiesListApi  () async {
    var data;
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    if(response.statusCode == 200){
      data = jsonDecode(response.body);
      return data;
    }else{
      throw Exception('Error');
    }
  }
}