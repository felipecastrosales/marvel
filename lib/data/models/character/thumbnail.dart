import 'dart:convert';

class Thumbnail {
  String? path;
  String? extension;

  Thumbnail({this.path, this.extension});

  @override
  String toString() => 'Thumbnail(path: $path, extension: $extension)';

  factory Thumbnail.fromMap(Map<String, dynamic> data) => Thumbnail(
        path: data['path'] as String?,
        extension: data['extension'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'path': path,
        'extension': extension,
      };

  factory Thumbnail.fromJson(Map<String, dynamic> data) {
    return Thumbnail.fromMap(data);
  }

  String toJson() => json.encode(toMap());
}
