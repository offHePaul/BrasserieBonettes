import 'package:flutter/material.dart';
import '../models/loyalty_card.dart';
import '../services/isar_service.dart';

class CardProvider with ChangeNotifier {
  final IsarService _isarService = IsarService();
  List<LoyaltyCard> _cards = [];
  List<LoyaltyCard> _filteredCards = [];

  List<LoyaltyCard> get cards =>
      _filteredCards.isNotEmpty ? _filteredCards : _cards;

  Future<void> fetchCards() async {
    _cards = await _isarService.getAllCards();
    notifyListeners();
  }

  Future<void> addCard(LoyaltyCard card) async {
    card.registrationDate = DateTime.now();
    card.lastUpdated = DateTime.now();
    await _isarService.addLoyaltyCard(card);
    fetchCards();
  }

  Future<void> updateCard(LoyaltyCard card) async {
    card.lastUpdated = DateTime.now();
    await _isarService.updateCard(card);
    fetchCards();
  }

  Future<void> deleteCard(int id) async {
    await _isarService.deleteCard(id);
    fetchCards();
  }

  void filterCards(String query) {
    if (query.isEmpty) {
      _filteredCards = [];
    } else {
      _filteredCards = _cards
          .where(
              (card) => card.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
