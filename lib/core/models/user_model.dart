class UserModel {
  String fullname;
  String phone;
  String email;
  String password;
  String imei;
  String lng;
  String lat;

  UserModel(
      {this.fullname,
      this.phone,
      this.email,
      this.password,
      this.imei,
      this.lng,
      this.lat});

  UserModel.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    imei = json['imei'];
    lng = json['lng'];
    lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullname'] = this.fullname;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['password'] = this.password;
    data['imei'] = this.imei;
    data['lng'] = this.lng;
    data['lat'] = this.lat;
    return data;
  }
}








