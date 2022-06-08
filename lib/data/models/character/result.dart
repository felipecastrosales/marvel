import 'dart:convert';

import 'comics.dart';
import 'thumbnail.dart';

class Result {
  int? id;
  String? name;
  String? description;
  Thumbnail? thumbnail;
  String? resourceUri;
  Comics? comics;

  Result({
    this.id,
    this.name,
    this.description,
    this.thumbnail,
    this.resourceUri,
    this.comics,
  });

  @override
  String toString() {
    return 'Result(id: $id, name: $name, description: $description, thumbnail: $thumbnail, resourceUri: $resourceUri, comics: $comics)';
  }

  factory Result.fromMap(Map<String, dynamic> data) => Result(
        id: data['id'] as int?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        thumbnail: data['thumbnail'] == null
            ? null
            : Thumbnail.fromMap(data['thumbnail'] as Map<String, dynamic>),
        resourceUri: data['resourceURI'] as String?,
        comics: data['comics'] == null
            ? null
            : Comics.fromMap(data['comics'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'description': description,
        'thumbnail': thumbnail?.toMap(),
        'resourceURI': resourceUri,
        'comics': comics?.toMap(),
      };

  factory Result.fromJson(Map<String, dynamic> data) {
    return Result.fromMap(data);
  }

  String toJson() => json.encode(toMap());
}
