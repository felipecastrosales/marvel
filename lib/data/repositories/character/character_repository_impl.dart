import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:marvel/app/core/exceptions/character_exception.dart';
import 'package:marvel/data/constants/constants_api.dart';
import 'package:marvel/data/models/character/data.dart';
import 'package:marvel/data/services/dio/dio_service.dart';

import 'character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final DioService _dioService;
  CharacterRepositoryImpl({
    required DioService dioService,
  }) : _dioService = dioService;

  @override
  Future<Data> getCharacter() async {
    // final Response? response;
    var dio = _dioService.getDio();
    const ts = ConstantsAPI.timeStamp;
    const apiKey = ConstantsAPI.apiKey;
    const hash = ConstantsAPI.hash;
    var queryParameters = {
      'ts': ts,
      'apikey': apiKey,
      'hash': hash,
    };
    try {
      var response = await dio.get(
        ConstantsAPI.characters,
        queryParameters: queryParameters,
      );
      if (kDebugMode) {
        print(response.data);
      }
      return Data.fromJson(response.data);
    } catch (e, s) {
      developer.log('$e', name: 'Error:');
      developer.log('$s', name: 'StackTrace:');
      throw CharacterException('Error to load Characters');
    }
  }
}



//   @override
//   Future<Data> getCharacter() async {
//     // final Response? response;
//     var dio = _dioService.getDio();
//     var queryParameters = {
//       'ts': '1616695783',
//       'apikey': 'da0b41050b1361bf58011d9e4bb93ec3',
//       'hash': '1df52d550f27af8de3135f5aa07c664f',
//     };
//     var response = await dio.get(
//       ConstantsAPI.characters,
//       queryParameters: queryParameters,
//     );
//     developer.log(response.data);
//     return Data.fromJson(response.data);
//     // try {
//     // } catch (e, s) {
//     //   developer.log('$e', name: 'Error:');
//     //   developer.log('$s', name: 'StackTrace:');
//     //   throw CharacterException('Error to load Characters');
//     // }
//   }
// }

