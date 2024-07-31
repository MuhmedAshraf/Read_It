import 'package:readit/Features/03.home/data/models/Book_model/Lists.dart';


class Results {

  String? bestsellersDate;
  String? publishedDate;
  String? publishedDateDescription;
  String? previousPublishedDate;
  String? nextPublishedDate;
  List<Lists>? lists;

  Results({
      this.bestsellersDate, 
      this.publishedDate, 
      this.publishedDateDescription, 
      this.previousPublishedDate, 
      this.nextPublishedDate, 
      this.lists,});

  Results.fromJson(Map<String,dynamic> jsonData) {
    bestsellersDate = jsonData['bestsellers_date'];
    publishedDate = jsonData['published_date'];
    publishedDateDescription = jsonData['published_date_description'];
    previousPublishedDate = jsonData['previous_published_date'];
    nextPublishedDate = jsonData['next_published_date'];
    if (jsonData['lists'] != null) {
      lists = [];
      jsonData['lists'].forEach((v) {
        lists?.add(Lists.fromJson(v));
      });
    }
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bestsellers_date'] = bestsellersDate;
    map['published_date'] = publishedDate;
    map['published_date_description'] = publishedDateDescription;
    map['previous_published_date'] = previousPublishedDate;
    map['next_published_date'] = nextPublishedDate;
    if (lists != null) {
      map['lists'] = lists?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}