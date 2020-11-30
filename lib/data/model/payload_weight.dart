class PayloadWeight {
  String id;
  String name;
  int kg;
  int lb;

  PayloadWeight({this.id, this.name, this.kg, this.lb});

  PayloadWeight.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    kg = json['kg'];
    lb = json['lb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['kg'] = this.kg;
    data['lb'] = this.lb;
    return data;
  }
}
