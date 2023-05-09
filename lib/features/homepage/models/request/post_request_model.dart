class PostRequestModel {
  final String title;
  final String description;
  final int userId;

  PostRequestModel(
      {required this.description, required this.title, required this.userId});
  Map<String, dynamic> toJson() => {
        "userId": userId,
        "title": title,
        "body": description,
      };
}
