import 'dart:convert';

import 'comics.dart';
import 'thumbnail.dart';

class Result {
  int id;
  String name;
  String description;
  Thumbnail thumbnail;
  String resourceUri;
  Comics comics;

  Result({
    required this.id,
    required this.name,
    required this.description,
    required this.thumbnail,
    required this.resourceUri,
    required this.comics,
  });

  @override
  String toString() {
    return 'Result(id: $id, name: $name, description: $description, thumbnail: $thumbnail, resourceUri: $resourceUri, comics: $comics)';
  }

  factory Result.fromMap(Map<String, dynamic> data) => Result(
        id: data['id'] ?? 0,
        name: data['name'] ?? '',
        description: data['description'] ?? '',
        thumbnail: Thumbnail?.fromMap(data['thumbnail']),
        resourceUri: data['resourceURI'] ?? '',
        comics: Comics?.fromMap(data['comics']),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'description': description,
        'thumbnail': thumbnail.toMap(),
        'resourceURI': resourceUri,
        'comics': comics.toMap(),
      };

  factory Result.fromJson(Map<String, dynamic> data) {
    return Result.fromMap(data);
  }

  String toJson() => json.encode(toMap());
}
