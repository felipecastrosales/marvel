import 'dart:convert';

import 'item.dart';

class Comics {
  int? available;
  String? collectionUri;
  List<Item>? items;
  int? returned;

  Comics({
    this.available,
    this.collectionUri,
    this.items,
    this.returned,
  });

  @override
  String toString() {
    return 'Comics(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  factory Comics.fromMap(Map<String, dynamic> data) => Comics(
        available: data['available'] as int?,
        collectionUri: data['collectionURI'] as String?,
        items: (data['items'] as List<dynamic>?)
            ?.map((items) => Item.fromMap(items as Map<String, dynamic>))
            .toList(),
        returned: data['returned'] as int?,
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
