class Detail {

  String? errorcode;

  Detail({
      this.errorcode,});

  Detail.fromJson(Map<String,dynamic> jsonData) {
    errorcode = jsonData['errorcode'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['errorcode'] = errorcode;
    return map;
  }

}