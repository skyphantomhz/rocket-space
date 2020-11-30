import 'package:flutter/material.dart';
import 'package:rocket/screens/home/home_bloc.dart';
import 'package:rocket/screens/rockets/rocket_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);
  HomeBloc homeBloc;
  @override
  Widget build(BuildContext context) {
    homeBloc = HomeBloc();
    homeBloc.fetchLaunchs();
    return Scaffold(
      body: Center(
        child: RocketScreen(),
      ),
    );
  }

  void dispose() {}
}
