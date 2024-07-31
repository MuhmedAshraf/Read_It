import 'Detail.dart';

class Fault {

  String? faultstring;
  Detail? detail;

  Fault({
      this.faultstring, 
      this.detail,});

  Fault.fromJson(Map<String,dynamic> jsonData) {
    faultstring = jsonData['faultstring'];
    detail = jsonData['detail'] != null ? Detail.fromJson(jsonData['detail']) : null;
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['faultstring'] = faultstring;
    if (detail != null) {
      map['detail'] = detail?.toJson();
    }
    return map;
  }

}