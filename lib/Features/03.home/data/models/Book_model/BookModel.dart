import 'Results.dart';

class BookModel {

  String? status;
  String? copyright;
  int? numResults;
  Results? results;

  BookModel({
      this.status, 
      this.copyright, 
      this.numResults, 
      this.results,});

  BookModel.fromJson(dynamic jsonData) {
    status = jsonData['status'];
    copyright = jsonData['copyright'];
    numResults = jsonData['num_results'];
    results = jsonData['results'] != null ? Results.fromJson(jsonData['results']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['copyright'] = copyright;
    map['num_results'] = numResults;
    if (results != null) {
      map['results'] = results?.toJson();
    }
    return map;
  }

}