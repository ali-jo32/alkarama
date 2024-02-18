class Employes {
  String? uuid;
  String? name;
  String? address;
  String? logo;
  List<Videos>? videos;

  Employes({this.uuid, this.name, this.address, this.logo, this.videos});

  Employes.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    address = json['address'];
    logo = json['logo'];
    if (json['videos'] != null) {
      videos = <Videos>[];
      json['videos'].forEach((v) {
        videos!.add(new Videos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['address'] = this.address;
    data['logo'] = this.logo;
    if (this.videos != null) {
      data['videos'] = this.videos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Videos {
  String? uuid;
  String? descreption;
  String? url;

  Videos({this.uuid, this.descreption, this.url});

  Videos.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    descreption = json['descreption'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['descreption'] = this.descreption;
    data['url'] = this.url;
    return data;
  }
}
