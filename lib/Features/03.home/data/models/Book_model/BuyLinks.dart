class BuyLinks {
  String? name;
  String? url;

  BuyLinks({
    this.name,
    this.url,
  });

  BuyLinks.fromJson(dynamic jsonData) {
    name = jsonData['name'];
    url = jsonData['url'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }
}
