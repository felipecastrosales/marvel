import 'dart:convert';

import 'result.dart';

class Data {
  int offset;
  int limit;
  int total;
  int count;
  List<Result>? results;

  Data({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  @override
  String toString() {
    return 'Data(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        offset: data['offset'] ?? 0,
        limit: data['limit'] ?? 0,
        total: data['total'] ?? 0,
        count: data['count'] ?? 0,
        results: (data['results'] as List<dynamic>?)
            ?.map((result) => Result.fromMap(result))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'offset': offset,
        'limit': limit,
        'total': total,
        'count': count,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  factory Data.fromJson(Map<String, dynamic> data) {
    return Data.fromMap(data);
  }

  String toJson() => json.encode(toMap());
}
