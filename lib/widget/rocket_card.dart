import 'package:flutter/material.dart';

class RocketCard extends StatelessWidget {
  const RocketCard({
    Key key,
    @required this.rocket,
  }) : super(key: key);

  final rocket;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    Text("${rocket.successRatePct}%",
                        style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    rocket.rocketName,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.start,
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    Text("${rocket.costPerLaunch / 1000000}M",
                        style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              color: rocket.active ? Colors.green : Colors.red,
              child: Text(
                rocket.active ? "Active" : "Deactive",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
