import 'package:marvel/data/models/character/data.dart';
import 'package:marvel/data/repositories/character/character_repository.dart';
import 'character_service.dart';

class CharacterServiceImpl implements CharacterService {
  final CharacterRepository _characterRepository;
  CharacterServiceImpl({
    required CharacterRepository characterRepository,
  }) : _characterRepository = characterRepository;

  @override
  Future<Data?> getCharacter() {
    return _characterRepository.getCharacter();
  }
}
