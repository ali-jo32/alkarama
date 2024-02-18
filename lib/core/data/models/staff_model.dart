class Staff {
  String? image;
  String? name;
  String? work;

  Staff({this.image, this.name, this.work});

  Staff.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    work = json['work'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['work'] = this.work;
    return data;
  }
}
