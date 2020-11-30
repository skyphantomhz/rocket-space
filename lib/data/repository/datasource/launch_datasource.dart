import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:rocket/data/model/launch.dart';
import 'package:rocket/data/model/result.dart';
import 'package:rocket/data/repository/launch_repository.dart';
import 'package:rocket/exception/empty_exception.dart';

class LaunchDataSource implements LaunchRepository {
  var client = GetIt.I.get<Client>();
  var _decoder = GetIt.I.get<JsonDecoder>();
  final baseUrl = "https://api.spacexdata.com/v3";

  @override
  Future<Result<List<Launch>>> launchs() async {
    try {
      var response = await client.get('$baseUrl/launchs?order=desc');
      var json = _decoder.convert(response.body);
      if (json != null) {
        var launchs = new List<Launch>();
        json.forEach((launch) {
          launchs.add(new Launch.fromJson(launch));
        });
        if (launchs?.isNotEmpty ?? false) {
          return Result.success(launchs);
        } else {
          return Result.error(EmptyException());
        }
      }
    } catch (ex) {
      return Result.error(ex);
    }
  }
}
