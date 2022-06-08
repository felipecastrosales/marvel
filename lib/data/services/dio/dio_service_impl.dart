import 'package:dio/dio.dart';

import 'package:marvel/data/constants/constants.dart';

import 'dio.dart';

class DioServiceImpl implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: ConstantsAPI.baseUrl,
        headers: {
          'Content-Type': 'application/json; charset=utf-8',
        },
      ),
    );
  }
}
