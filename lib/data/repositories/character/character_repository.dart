import 'package:marvel/data/models/character/data.dart';

abstract class CharacterRepository {
  Future<Data?> getCharacter();
}
