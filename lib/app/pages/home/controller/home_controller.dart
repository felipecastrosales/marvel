import 'package:marvel/data/models/character/data.dart';
import 'package:marvel/data/repositories/character/character.dart';
import 'package:marvel/data/services/dio/dio.dart';

class HomeController {
  final _characterRepository = CharacterRepositoryImpl(
    dioService: DioServiceImpl(),
  );

  Future<Data> fetchCharacters() async {
    return await _characterRepository.getCharacter();
  }
}
