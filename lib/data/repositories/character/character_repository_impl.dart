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
    var dio = _dioService.getDio();
    const ts = ConstantsAPI.timeStamp;
    const apiKey = ConstantsAPI.apiKey;
    const hash = ConstantsAPI.hash;
    var queryParameters = {'ts': ts, 'apikey': apiKey, 'hash': hash};

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
