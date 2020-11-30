import 'package:rocket/data/model/thrust_sea_level.dart';

class Engines {
  int number;
  String type;
  String version;
  String layout;
  int engineLossMax;
  String propellant1;
  String propellant2;
  ThrustSeaLevel thrustSeaLevel;
  ThrustSeaLevel thrustVacuum;
  num thrustToWeight;

  Engines(
      {this.number,
      this.type,
      this.version,
      this.layout,
      this.engineLossMax,
      this.propellant1,
      this.propellant2,
      this.thrustSeaLevel,
      this.thrustVacuum,
      this.thrustToWeight});

  Engines.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    type = json['type'];
    version = json['version'];
    layout = json['layout'];
    engineLossMax = json['engine_loss_max'];
    propellant1 = json['propellant_1'];
    propellant2 = json['propellant_2'];
    thrustSeaLevel = json['thrust_sea_level'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    thrustVacuum = json['thrust_vacuum'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_vacuum'])
        : null;
    thrustToWeight = json['thrust_to_weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['type'] = this.type;
    data['version'] = this.version;
    data['layout'] = this.layout;
    data['engine_loss_max'] = this.engineLossMax;
    data['propellant_1'] = this.propellant1;
    data['propellant_2'] = this.propellant2;
    if (this.thrustSeaLevel != null) {
      data['thrust_sea_level'] = this.thrustSeaLevel.toJson();
    }
    if (this.thrustVacuum != null) {
      data['thrust_vacuum'] = this.thrustVacuum.toJson();
    }
    data['thrust_to_weight'] = this.thrustToWeight;
    return data;
  }
}
