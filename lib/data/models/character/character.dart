import 'dart:convert';

import 'data.dart';

class Character {
  Data data;
  Character({required this.data});

  @override
  String toString() => 'Character(data: $data)';

  factory Character.fromMap(Map<String, dynamic> data) => Character(
        data: Data.fromMap(data['data']),
      );

  Map<String, dynamic> toMap() => {
        'data': data.toMap(),
      };

  factory Character.fromJson(Map<String, dynamic> data) {
    return Character.fromMap(data);
  }

  String toJson() => json.encode(toMap());
}
