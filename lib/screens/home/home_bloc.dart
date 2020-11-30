import 'package:get_it/get_it.dart';
import 'package:rocket/base/bloc.dart';
import 'package:rocket/data/model/launch.dart';
import 'package:rocket/data/model/result.dart';
import 'package:rocket/data/repository/launch_repository.dart';

class HomeBloc extends Bloc {
  final _launchRepo = GetIt.I.get<LaunchRepository>();

  void fetchLaunchs() async {
    var rocketResponse = await _launchRepo.launchs();
    List<Launch> data = (rocketResponse as ResultSuccess).value;
    print(data.map((e) => e.toJson()).toString());
  }

  @override
  void dispose() {}
}
