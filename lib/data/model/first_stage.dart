import 'package:rocket/data/model/thrust_sea_level.dart';

class FirstStage {
  bool reusable;
  int engines;
  num fuelAmountTons;
  int burnTimeSec;
  ThrustSeaLevel thrustSeaLevel;
  ThrustSeaLevel thrustVacuum;

  FirstStage(
      {this.reusable,
      this.engines,
      this.fuelAmountTons,
      this.burnTimeSec,
      this.thrustSeaLevel,
      this.thrustVacuum});

  FirstStage.fromJson(Map<String, dynamic> json) {
    reusable = json['reusable'];
    engines = json['engines'];
    fuelAmountTons = json['fuel_amount_tons'];
    burnTimeSec = json['burn_time_sec'];
    thrustSeaLevel = json['thrust_sea_level'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    thrustVacuum = json['thrust_vacuum'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_vacuum'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reusable'] = this.reusable;
    data['engines'] = this.engines;
    data['fuel_amount_tons'] = this.fuelAmountTons;
    data['burn_time_sec'] = this.burnTimeSec;
    if (this.thrustSeaLevel != null) {
      data['thrust_sea_level'] = this.thrustSeaLevel.toJson();
    }
    if (this.thrustVacuum != null) {
      data['thrust_vacuum'] = this.thrustVacuum.toJson();
    }
    return data;
  }
}
