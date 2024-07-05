class AritcleModel {
  final String? image;
  final String? title;
  final String? subtitle;

  AritcleModel({this.image, this.title, this.subtitle});

  factory AritcleModel.fromJson(json) {
    return AritcleModel(
          image: json['urlToImage'],
          title: json['title'],
          subtitle: json['description'],
        );
  }
}
