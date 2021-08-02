class PostModel {
  PostModel({
    required this.id,
    required this.title,
    required this.body,
  });

  final int id;
  final String title;
  final String body;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  static List<PostModel> fromJsonList(List<dynamic> json) =>
      json.map((i) => PostModel.fromJson(i)).toList();
}
