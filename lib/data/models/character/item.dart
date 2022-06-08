import 'dart:convert';

class Item {
  String? resourceUri;
  String? name;

  Item({this.resourceUri, this.name});

  @override
  String toString() => 'Item(resourceUri: $resourceUri, name: $name)';

  factory Item.fromMap(Map<String, dynamic> data) => Item(
        resourceUri: data['resourceURI'] as String?,
        name: data['name'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'resourceURI': resourceUri,
        'name': name,
      };

  factory Item.fromJson(Map<String, dynamic> data) {
    return Item.fromMap(data);
  }

  String toJson() => json.encode(toMap());
}
