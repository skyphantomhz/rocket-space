import 'package:rocket/data/model/Launch_failure_details.dart';
import 'package:rocket/data/model/launch_site.dart';
import 'package:rocket/data/model/links.dart';
import 'package:rocket/data/model/rocket.dart';
import 'package:rocket/data/model/telemetry.dart';
import 'package:rocket/data/model/timeline.dart';

class Launch {
  int flightNumber;
  String missionName;
  List<String> missionId;
  bool upcoming;
  String launchYear;
  int launchDateUnix;
  String launchDateUtc;
  String launchDateLocal;
  bool isTentative;
  String tentativeMaxPrecision;
  bool tbd;
  int launchWindow;
  Rocket rocket;
  Telemetry telemetry;
  LaunchSite launchSite;
  bool launchSuccess;
  LaunchFailureDetails launchFailureDetails;
  Links links;
  String details;
  String staticFireDateUtc;
  int staticFireDateUnix;
  Timeline timeline;

  Launch(
      {this.flightNumber,
      this.missionName,
      this.missionId,
      this.upcoming,
      this.launchYear,
      this.launchDateUnix,
      this.launchDateUtc,
      this.launchDateLocal,
      this.isTentative,
      this.tentativeMaxPrecision,
      this.tbd,
      this.launchWindow,
      this.rocket,
      this.telemetry,
      this.launchSite,
      this.launchSuccess,
      this.launchFailureDetails,
      this.links,
      this.details,
      this.staticFireDateUtc,
      this.staticFireDateUnix,
      this.timeline});

  Launch.fromJson(Map<String, dynamic> json) {
    flightNumber = json['flight_number'];
    missionName = json['mission_name'];
    if (json['mission_id'] != null) {
      missionId = new List<Null>();
      json['mission_id'].forEach((v) {
        missionId.add(v);
      });
    }
    upcoming = json['upcoming'];
    launchYear = json['launch_year'];
    launchDateUnix = json['launch_date_unix'];
    launchDateUtc = json['launch_date_utc'];
    launchDateLocal = json['launch_date_local'];
    isTentative = json['is_tentative'];
    tentativeMaxPrecision = json['tentative_max_precision'];
    tbd = json['tbd'];
    launchWindow = json['launch_window'];
    rocket =
        json['rocket'] != null ? new Rocket.fromJson(json['rocket']) : null;
    telemetry = json['telemetry'] != null
        ? new Telemetry.fromJson(json['telemetry'])
        : null;
    launchSite = json['launch_site'] != null
        ? new LaunchSite.fromJson(json['launch_site'])
        : null;
    launchSuccess = json['launch_success'];
    launchFailureDetails = json['launch_failure_details'] != null
        ? new LaunchFailureDetails.fromJson(json['launch_failure_details'])
        : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    details = json['details'];
    staticFireDateUtc = json['static_fire_date_utc'];
    staticFireDateUnix = json['static_fire_date_unix'];
    timeline = json['timeline'] != null
        ? new Timeline.fromJson(json['timeline'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flight_number'] = this.flightNumber;
    data['mission_name'] = this.missionName;
    if (this.missionId != null) {
      data['mission_id'] = this.missionId.map((v) => v);
    }
    data['upcoming'] = this.upcoming;
    data['launch_year'] = this.launchYear;
    data['launch_date_unix'] = this.launchDateUnix;
    data['launch_date_utc'] = this.launchDateUtc;
    data['launch_date_local'] = this.launchDateLocal;
    data['is_tentative'] = this.isTentative;
    data['tentative_max_precision'] = this.tentativeMaxPrecision;
    data['tbd'] = this.tbd;
    data['launch_window'] = this.launchWindow;
    if (this.rocket != null) {
      data['rocket'] = this.rocket.toJson();
    }
    if (this.telemetry != null) {
      data['telemetry'] = this.telemetry.toJson();
    }
    if (this.launchSite != null) {
      data['launch_site'] = this.launchSite.toJson();
    }
    data['launch_success'] = this.launchSuccess;
    if (this.launchFailureDetails != null) {
      data['launch_failure_details'] = this.launchFailureDetails.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    data['details'] = this.details;
    data['static_fire_date_utc'] = this.staticFireDateUtc;
    data['static_fire_date_unix'] = this.staticFireDateUnix;
    if (this.timeline != null) {
      data['timeline'] = this.timeline.toJson();
    }
    return data;
  }
}
