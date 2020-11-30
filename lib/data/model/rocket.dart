import 'package:rocket/data/model/diameter.dart';
import 'package:rocket/data/model/engines.dart';
import 'package:rocket/data/model/first_stage.dart';
import 'package:rocket/data/model/landing_leg.dart';
import 'package:rocket/data/model/mass.dart';
import 'package:rocket/data/model/payload_weight.dart';
import 'package:rocket/data/model/second_stage.dart';

class Rocket {
  int id;
  bool active;
  int stages;
  int boosters;
  int costPerLaunch;
  int successRatePct;
  String firstFlight;
  String country;
  String company;
  Diameter height;
  Diameter diameter;
  Mass mass;
  List<PayloadWeight> payloadWeights;
  FirstStage firstStage;
  SecondStage secondStage;
  Engines engines;
  LandingLegs landingLegs;
  String wikipedia;
  String description;
  String rocketId;
  String rocketName;
  String rocketType;

  Rocket(
      {this.id,
      this.active,
      this.stages,
      this.boosters,
      this.costPerLaunch,
      this.successRatePct,
      this.firstFlight,
      this.country,
      this.company,
      this.height,
      this.diameter,
      this.mass,
      this.payloadWeights,
      this.firstStage,
      this.secondStage,
      this.engines,
      this.landingLegs,
      this.wikipedia,
      this.description,
      this.rocketId,
      this.rocketName,
      this.rocketType});

  Rocket.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    active = json['active'];
    stages = json['stages'];
    boosters = json['boosters'];
    costPerLaunch = json['cost_per_launch'];
    successRatePct = json['success_rate_pct'];
    firstFlight = json['first_flight'];
    country = json['country'];
    company = json['company'];
    height =
        json['height'] != null ? new Diameter.fromJson(json['height']) : null;
    diameter = json['diameter'] != null
        ? new Diameter.fromJson(json['diameter'])
        : null;
    mass = json['mass'] != null ? new Mass.fromJson(json['mass']) : null;
    if (json['payload_weights'] != null) {
      payloadWeights = new List<PayloadWeight>();
      json['payload_weights'].forEach((v) {
        payloadWeights.add(new PayloadWeight.fromJson(v));
      });
    }
    firstStage = json['first_stage'] != null
        ? new FirstStage.fromJson(json['first_stage'])
        : null;
    secondStage = json['second_stage'] != null
        ? new SecondStage.fromJson(json['second_stage'])
        : null;
    engines =
        json['engines'] != null ? new Engines.fromJson(json['engines']) : null;
    landingLegs = json['landing_legs'] != null
        ? new LandingLegs.fromJson(json['landing_legs'])
        : null;
    wikipedia = json['wikipedia'];
    description = json['description'];
    rocketId = json['rocket_id'];
    rocketName = json['rocket_name'];
    rocketType = json['rocket_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['active'] = this.active;
    data['stages'] = this.stages;
    data['boosters'] = this.boosters;
    data['cost_per_launch'] = this.costPerLaunch;
    data['success_rate_pct'] = this.successRatePct;
    data['first_flight'] = this.firstFlight;
    data['country'] = this.country;
    data['company'] = this.company;
    if (this.height != null) {
      data['height'] = this.height.toJson();
    }
    if (this.diameter != null) {
      data['diameter'] = this.diameter.toJson();
    }
    if (this.mass != null) {
      data['mass'] = this.mass.toJson();
    }
    if (this.payloadWeights != null) {
      data['payload_weights'] =
          this.payloadWeights.map((v) => v.toJson()).toList();
    }
    if (this.firstStage != null) {
      data['first_stage'] = this.firstStage.toJson();
    }
    if (this.secondStage != null) {
      data['second_stage'] = this.secondStage.toJson();
    }
    if (this.engines != null) {
      data['engines'] = this.engines.toJson();
    }
    if (this.landingLegs != null) {
      data['landing_legs'] = this.landingLegs.toJson();
    }
    data['wikipedia'] = this.wikipedia;
    data['description'] = this.description;
    data['rocket_id'] = this.rocketId;
    data['rocket_name'] = this.rocketName;
    data['rocket_type'] = this.rocketType;
    return data;
  }
}
