import 'BuyLinks.dart';

class Books {
  String? ageGroup;
  String? amazonProductUrl;
  String? articleChapterLink;
  String? author;
  String? bookImage;
  int? bookImageWidth;
  int? bookImageHeight;
  String? bookReviewLink;
  String? bookUri;
  String? btrn;
  String? contributor;
  String? contributorNote;
  String? createdDate;
  String? description;
  String? firstChapterLink;
  String? price;
  String? primaryIsbn10;
  String? primaryIsbn13;
  String? publisher;
  int? rank;
  int? rankLastWeek;
  String? sundayReviewLink;
  String? title;
  String? updatedDate;
  int? weeksOnList;
  List<BuyLinks>? buyLinks;

  Books({
    this.ageGroup,
    this.amazonProductUrl,
    this.articleChapterLink,
    this.author,
    this.bookImage,
    this.bookImageWidth,
    this.bookImageHeight,
    this.bookReviewLink,
    this.bookUri,
    this.btrn,
    this.contributor,
    this.contributorNote,
    this.createdDate,
    this.description,
    this.firstChapterLink,
    this.price,
    this.primaryIsbn10,
    this.primaryIsbn13,
    this.publisher,
    this.rank,
    this.rankLastWeek,
    this.sundayReviewLink,
    this.title,
    this.updatedDate,
    this.weeksOnList,
    this.buyLinks,
  });

  Books.fromJson(dynamic jsonData) {
    ageGroup = jsonData['age_group'];
    amazonProductUrl = jsonData['amazon_product_url'];
    articleChapterLink = jsonData['article_chapter_link'];
    author = jsonData['author'];
    bookImage = jsonData['book_image'];
    bookImageWidth = jsonData['book_image_width'];
    bookImageHeight = jsonData['book_image_height'];
    bookReviewLink = jsonData['book_review_link'];
    bookUri = jsonData['book_uri'];
    btrn = jsonData['btrn'];
    contributor = jsonData['contributor'];
    contributorNote = jsonData['contributor_note'];
    createdDate = jsonData['created_date'];
    description = jsonData['description'];
    firstChapterLink = jsonData['first_chapter_link'];
    price = jsonData['price'];
    primaryIsbn10 = jsonData['primary_isbn10'];
    primaryIsbn13 = jsonData['primary_isbn13'];
    publisher = jsonData['publisher'];
    rank = jsonData['rank'];
    rankLastWeek = jsonData['rank_last_week'];
    sundayReviewLink = jsonData['sunday_review_link'];
    title = jsonData['title'];
    updatedDate = jsonData['updated_date'];
    weeksOnList = jsonData['weeks_on_list'];
    if (jsonData['buy_links'] != null) {
      buyLinks = [];
      jsonData['buy_links'].forEach((v) {
        buyLinks?.add(BuyLinks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['age_group'] = ageGroup;
    map['amazon_product_url'] = amazonProductUrl;
    map['article_chapter_link'] = articleChapterLink;
    map['author'] = author;
    map['book_image'] = bookImage;
    map['book_image_width'] = bookImageWidth;
    map['book_image_height'] = bookImageHeight;
    map['book_review_link'] = bookReviewLink;
    map['book_uri'] = bookUri;
    map['btrn'] = btrn;
    map['contributor'] = contributor;
    map['contributor_note'] = contributorNote;
    map['created_date'] = createdDate;
    map['description'] = description;
    map['first_chapter_link'] = firstChapterLink;
    map['price'] = price;
    map['primary_isbn10'] = primaryIsbn10;
    map['primary_isbn13'] = primaryIsbn13;
    map['publisher'] = publisher;
    map['rank'] = rank;
    map['rank_last_week'] = rankLastWeek;
    map['sunday_review_link'] = sundayReviewLink;
    map['title'] = title;
    map['updated_date'] = updatedDate;
    map['weeks_on_list'] = weeksOnList;
    if (buyLinks != null) {
      map['buy_links'] = buyLinks?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
