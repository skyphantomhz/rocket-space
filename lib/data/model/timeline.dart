class Timeline {
  int webcastLiftoff;

  Timeline({this.webcastLiftoff});

  Timeline.fromJson(Map<String, dynamic> json) {
    webcastLiftoff = json['webcast_liftoff'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['webcast_liftoff'] = this.webcastLiftoff;
    return data;
  }
}
