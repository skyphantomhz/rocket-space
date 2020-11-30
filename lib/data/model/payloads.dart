import 'package:rocket/data/model/composite_fairing.dart';

class Payloads {
  String option1;
  String option2;
  CompositeFairing compositeFairing;

  Payloads({this.option1, this.option2, this.compositeFairing});

  Payloads.fromJson(Map<String, dynamic> json) {
    option1 = json['option_1'];
    option2 = json['option_2'];
    compositeFairing = json['composite_fairing'] != null
        ? new CompositeFairing.fromJson(json['composite_fairing'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['option_1'] = this.option1;
    data['option_2'] = this.option2;
    if (this.compositeFairing != null) {
      data['composite_fairing'] = this.compositeFairing.toJson();
    }
    return data;
  }
}
