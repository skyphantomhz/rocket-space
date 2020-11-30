import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:rocket/data/model/result.dart';
import 'package:rocket/data/model/rocket.dart';
import 'package:rocket/data/repository/rocket_repository.dart';
import 'package:rocket/exception/empty_exception.dart';

class RocketDataSource implements RocketRepository {
  var client = GetIt.I.get<Client>();
  var _decoder = GetIt.I.get<JsonDecoder>();
  final baseUrl = "https://api.spacexdata.com/v3";

  @override
  Future<Result<List<Rocket>>> rockets() async {
    try {
      var response = await client.get('$baseUrl/rockets');
      var json = _decoder.convert(response.body);
      if (json != null) {
        var rockets = new List<Rocket>();
        json.forEach((rocket) {
          rockets.add(new Rocket.fromJson(rocket));
        });
        if (rockets?.isNotEmpty ?? false) {
          return Result.success(rockets);
        } else {
          return Result.error(EmptyException());
        }
      }
    } catch (ex) {
      return Result.error(ex);
    }
  }
}
