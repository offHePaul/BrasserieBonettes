import 'package:isar/isar.dart';

part 'loyalty_card.g.dart';

@Collection()
class LoyaltyCard {
  // ID unique
  Id id = Isar.autoIncrement;

  // Nom sur la carte
  late String name;

  // Nombre de cases cochées
  late int checkedBoxes = 0;

  // Nombre de cartons gagnés
  late int rewardCount = 0;

  // Un identifiant unique basé sur le nom
  @Index(unique: true)
  late String identifier;
}
