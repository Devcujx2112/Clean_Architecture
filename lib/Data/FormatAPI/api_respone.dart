class ResponseAPI {
  int? status;
  String? message;
  Map<String,dynamic>? data;

  ResponseAPI({this.status, this.message, required this.data});

  ResponseAPI.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['data'] = this.data;
    return data;
  }
}
