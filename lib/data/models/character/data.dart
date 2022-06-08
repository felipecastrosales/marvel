import 'dart:convert';

import 'result.dart';

class Data {
  int? offset;
  int? limit;
  int? total;
  int? count;
  List<Result>? results;

  Data({
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  });

  @override
  String toString() {
    return 'Data(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        offset: data['offset'] as int?,
        limit: data['limit'] as int?,
        total: data['total'] as int?,
        count: data['count'] as int?,
        results: (data['results'] as List<dynamic>?)
            ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
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
