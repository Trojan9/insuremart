class ErrorModel {
  ErrorModel({this.type, this.message});

  ErrorModel.fromJson(dynamic json) {
    type = json['type'] as String;
    message = json['message'] as String;
  }

  String type;
  String message;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    return data;
  }
}
