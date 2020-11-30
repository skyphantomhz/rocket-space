import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:rocket/data/repository/datasource/rocket_datasource.dart';
import 'package:rocket/data/repository/rocket_repository.dart';

void setup() {
  GetIt.I.registerLazySingleton<Client>(() => Client());
  GetIt.I.registerLazySingleton<JsonDecoder>(() => JsonDecoder());
  GetIt.I.registerLazySingleton<RocketRepository>(() => RocketDataSource());
}
