class Note {
  String id;
  String title;
  String content;
  DateTime createdAt;
  DateTime updatedAt;

  Note(
      {required this.id,
      required this.title,
      required this.content,
      required this.createdAt,
      required this.updatedAt});

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        content: json['content'] ?? '',
        createdAt: DateTime.parse(json['createdAt'] ?? DateTime.now()),
        updatedAt: DateTime.parse(json['updatedAt'])); 
  }
}
