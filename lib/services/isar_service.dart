import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/loyalty_card.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = _initDb();
  }

  Future<Isar> _initDb() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open([LoyaltyCardSchema], directory: dir.path);
  }

  Future<void> addLoyaltyCard(LoyaltyCard card) async {
    final isar = await db;
    await isar.writeTxn(() => isar.loyaltyCards.put(card));
  }

  Future<List<LoyaltyCard>> getAllCards() async {
    final isar = await db;
    return await isar.loyaltyCards.where().sortByIdentifier().findAll();
  }

  Future<LoyaltyCard?> getCardByName(String name) async {
    final isar = await db;
    return await isar.loyaltyCards.filter().nameEqualTo(name).findFirst();
  }

  Future<void> updateCard(LoyaltyCard card) async {
    final isar = await db;
    await isar.writeTxn(() => isar.loyaltyCards.put(card));
  }

  // Suppression d'une carte
  Future<void> deleteCard(int id) async {
    final isar = await db;
    await isar.writeTxn(() => isar.loyaltyCards.delete(id));
  }
}
