import 'package:flutter/material.dart';
import 'package:rocket/data/model/result.dart';
import 'package:rocket/data/model/rocket.dart';
import 'package:rocket/screens/rockets/rocket_bloc.dart';
import 'package:rocket/widget/rocket_card.dart';

class RocketScreen extends StatelessWidget {
  RocketScreen({Key key}) : super(key: key);

  RocketBloc rocketBloc;

  @override
  Widget build(BuildContext context) {
    rocketBloc = RocketBloc();
    rocketBloc.fetchRockets();
    return StreamBuilder<Result<List<Rocket>>>(
      stream: rocketBloc.rockets,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        Result<List<Rocket>> result = snapshot.data;
        if (result is ResultSuccess) {
          final rockets = (result as ResultSuccess).value;
          return ListView.builder(
            itemCount: rockets.length,
            itemBuilder: (BuildContext context, int index) {
              final rocket = rockets[index];
              return RocketCard(rocket: rocket);
            },
          );
        } else {
          return Container(
            child: Text("Something when wrong"),
          );
        }
      },
    );
  }
}
