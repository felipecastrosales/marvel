import 'dart:convert';

import 'item.dart';

class Comics {
  int available;
  String collectionUri;
  List<Item>? items;
  int returned;

  Comics({
    required this.available,
    required this.collectionUri,
    this.items,
    required this.returned,
  });

  @override
  String toString() {
    return 'Comics(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  factory Comics.fromMap(Map<String, dynamic> data) => Comics(
        available: data['available'] ?? 0,
        collectionUri: data['collectionURI'] ?? '',
        items: (data['items'] as List<dynamic>?)
            ?.map((items) => Item.fromMap(items as Map<String, dynamic>))
            .toList(),
        returned: data['returned'] ?? 0,
      );

  Map<String, dynamic> toMap() => {
        'available': available,
        'collectionURI': collectionUri,
        'items': items?.map((e) => e.toMap()).toList(),
        'returned': returned,
      };

  factory Comics.fromJson(Map<String, dynamic> data) {
    return Comics.fromMap(data);
  }

  String toJson() => json.encode(toMap());
}
