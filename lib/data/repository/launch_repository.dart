import 'package:rocket/data/model/result.dart';
import 'package:rocket/data/model/launch.dart';

abstract class LaunchRepository {
  Future<Result<List<Launch>>> launchs();
}
