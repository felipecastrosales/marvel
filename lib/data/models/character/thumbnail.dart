import 'dart:convert';

class Thumbnail {
  String path;
  String extensions;

  Thumbnail({
    required this.path,
    required this.extensions,
  });

  @override
  String toString() => 'Thumbnail(path: $path, extension: $extensions)';

  factory Thumbnail.fromMap(Map<String, dynamic> data) => Thumbnail(
        path: data['path'] ?? '',
        extensions: data['extension'] ?? '',
      );

  Map<String, dynamic> toMap() => {
        'path': path,
        'extension': extensions,
      };

  factory Thumbnail.fromJson(Map<String, dynamic> data) {
    return Thumbnail.fromMap(data);
  }

  String toJson() => json.encode(toMap());
}
