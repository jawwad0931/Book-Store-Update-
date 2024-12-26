class BookModel {
  String? id;
  String? title;
  String? description;
  String? rating;
  int? pages;
  String? language;
  String? audioLen;
  String? author;
  String? aboutAuthor;
  String? bookurl;
  String? audiourl;
  String? category;
  int? price;
  int? numberofRating;
  String? coverUrl; // New column

  BookModel({
    this.id,
    this.title,
    this.description,
    this.rating,
    this.pages,
    this.language,
    this.audioLen,
    this.author,
    this.aboutAuthor,
    this.bookurl,
    this.audiourl,
    this.category,
    this.price,
    this.numberofRating,
    this.coverUrl, // Constructor update
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["rating"] is String) {
      rating = json["rating"];
    }
    if (json["pages"] is int) {
      pages = json["pages"];
    }
    if (json["language"] is String) {
      language = json["language"];
    }
    if (json["audioLen"] is String) {
      audioLen = json["audioLen"];
    }
    if (json["author"] is String) {
      author = json["author"];
    }
    if (json["aboutAuthor"] is String) {
      aboutAuthor = json["aboutAuthor"];
    }
    if (json["bookurl"] is String) {
      bookurl = json["bookurl"];
    }
    if (json["audiourl"] is String) {
      audiourl = json["audiourl"];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["price"] is int) {
      price = json["price"];
    }
    if (json["numberofRating"] is int) {
      numberofRating = json["numberofRating"];
    }
    if (json["coverUrl"] is String) {
      // Add parsing for coverUrl
      coverUrl = json["coverUrl"];
    }
  }

  get audioLength => null;

  static List<BookModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(BookModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["title"] = title;
    data["description"] = description;
    data["rating"] = rating;
    data["pages"] = pages;
    data["language"] = language;
    data["audioLen"] = audioLen;
    data["author"] = author;
    data["aboutAuthor"] = aboutAuthor;
    data["bookurl"] = bookurl;
    data["audiourl"] = audiourl;
    data["category"] = category;
    data["price"] = price;
    data["numberofRating"] = numberofRating;
    data["coverUrl"] = coverUrl; // Add coverUrl to JSON
    return data;
  }
}
