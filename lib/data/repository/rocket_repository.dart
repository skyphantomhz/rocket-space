import 'package:rocket/data/model/result.dart';
import 'package:rocket/data/model/rocket.dart';

abstract class RocketRepository {
  Future<Result<List<Rocket>>> rockets();
}
