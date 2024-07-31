import 'Fault.dart';

class BookErrorModel {

  Fault? fault;

  BookErrorModel({
      this.fault,});

  BookErrorModel.fromJson(Map<String,dynamic> jsonData) {
    fault = jsonData['fault'] != null ? Fault.fromJson(jsonData['fault']) : null;
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fault != null) {
      map['fault'] = fault?.toJson();
    }
    return map;
  }

}