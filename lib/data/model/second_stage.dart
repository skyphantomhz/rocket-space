import 'package:rocket/data/model/payloads.dart';
import 'package:rocket/data/model/thrust_sea_level.dart';

class SecondStage {
  int engines;
  num fuelAmountTons;
  int burnTimeSec;
  ThrustSeaLevel thrust;
  Payloads payloads;

  SecondStage(
      {this.engines,
      this.fuelAmountTons,
      this.burnTimeSec,
      this.thrust,
      this.payloads});

  SecondStage.fromJson(Map<String, dynamic> json) {
    engines = json['engines'];
    fuelAmountTons = json['fuel_amount_tons'];
    burnTimeSec = json['burn_time_sec'];
    thrust = json['thrust'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust'])
        : null;
    payloads = json['payloads'] != null
        ? new Payloads.fromJson(json['payloads'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['engines'] = this.engines;
    data['fuel_amount_tons'] = this.fuelAmountTons;
    data['burn_time_sec'] = this.burnTimeSec;
    if (this.thrust != null) {
      data['thrust'] = this.thrust.toJson();
    }
    if (this.payloads != null) {
      data['payloads'] = this.payloads.toJson();
    }
    return data;
  }
}
