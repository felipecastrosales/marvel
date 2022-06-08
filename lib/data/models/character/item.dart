import 'dart:convert';

class Item {
  String resourceUri;
  String name;

  Item({
    required this.resourceUri,
    required this.name,
  });

  @override
  String toString() => 'Item(resourceUri: $resourceUri, name: $name)';

  factory Item.fromMap(Map<String, dynamic> data) => Item(
        resourceUri: data['resourceURI'] ?? '',
        name: data['name'] ?? '',
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
