class LaunchFailureDetails {
  int time;
  double altitude;
  String reason;

  LaunchFailureDetails({this.time, this.altitude, this.reason});

  LaunchFailureDetails.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    altitude = json['altitude'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['altitude'] = this.altitude;
    data['reason'] = this.reason;
    return data;
  }
}
