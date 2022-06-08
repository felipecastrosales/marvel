import 'package:marvel/data/constants/constants.dart';
import 'package:marvel/data/models/character/data.dart';
import 'package:marvel/data/services/dio/dio.dart';

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
      'ts': '1616695783',
      'apikey': 'da0b41050b1361bf58011d9e4bb93ec3',
      'hash': '1df52d550f27af8de3135f5aa07c664f',
    };
    var response = await dio.get(
      ConstantsAPI.characters,
      queryParameters: queryParameters,
    );
    print(response.data);
    return Data.fromJson(response.data);
  }
}
