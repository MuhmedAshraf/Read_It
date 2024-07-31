import 'Books.dart';

class Lists {

  int? listId;
  String? listName;
  String? listNameEncoded;
  String? displayName;
  String? updated;
  dynamic listImage;
  dynamic listImageWidth;
  dynamic listImageHeight;
  List<Books>? books;

  Lists({
      this.listId, 
      this.listName, 
      this.listNameEncoded, 
      this.displayName, 
      this.updated, 
      this.listImage, 
      this.listImageWidth, 
      this.listImageHeight, 
      this.books,});

  Lists.fromJson(dynamic jsonData) {
    listId = jsonData['list_id'];
    listName = jsonData['list_name'];
    listNameEncoded = jsonData['list_name_encoded'];
    displayName = jsonData['display_name'];
    updated = jsonData['updated'];
    listImage = jsonData['list_image'];
    listImageWidth = jsonData['list_image_width'];
    listImageHeight = jsonData['list_image_height'];
    if (jsonData['books'] != null) {
      books = [];
      jsonData['books'].forEach((v) {
        books?.add(Books.fromJson(v));
      });
    }
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['list_id'] = listId;
    map['list_name'] = listName;
    map['list_name_encoded'] = listNameEncoded;
    map['display_name'] = displayName;
    map['updated'] = updated;
    map['list_image'] = listImage;
    map['list_image_width'] = listImageWidth;
    map['list_image_height'] = listImageHeight;
    if (books != null) {
      map['books'] = books?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}