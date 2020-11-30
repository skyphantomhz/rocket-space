import 'package:get_it/get_it.dart';
import 'package:rocket/base/bloc.dart';
import 'package:rocket/data/model/result.dart';
import 'package:rocket/data/model/rocket.dart';
import 'package:rocket/data/repository/rocket_repository.dart';
import 'package:rxdart/subjects.dart';

class RocketBloc extends Bloc {
  final _rocketRepo = GetIt.I.get<RocketRepository>();

  BehaviorSubject<Result<List<Rocket>>> _rockets = BehaviorSubject();
  Stream<Result<List<Rocket>>> get rockets => _rockets.stream;

  void fetchRockets() async {
    var rocketResponse = await _rocketRepo.rockets();
    _rockets.add(rocketResponse);
  }

  @override
  void dispose() {}
}
