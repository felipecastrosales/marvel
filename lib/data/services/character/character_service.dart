import 'package:marvel/data/models/character/data.dart';

abstract class CharacterService {
  Future<Data?> getCharacter();
}
