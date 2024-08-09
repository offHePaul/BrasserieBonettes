import 'package:brasserie/screens/all_cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/loyalty_card.dart';
import '../providers/card_provider.dart';
import '../widgets/loyalty_card_widget.dart';
import '../widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cardProvider = Provider.of<CardProvider>(context);

    // Fetch cards when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      cardProvider.fetchCards();
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion de fidélité'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AllCardsScreen(),
                ),
              );
            },
            icon: const Icon(Icons.people_alt_rounded),
          ),
          const SizedBox(width: 20),
          IconButton(
            onPressed: () {
              _showAddCardDialog(context, cardProvider);
            },
            icon: const Icon(Icons.add_box_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          const SearchBarCustom(),
          Expanded(
            child: ListView.builder(
              itemCount: cardProvider.cards.length,
              itemBuilder: (context, index) {
                return LoyaltyCardWidget(card: cardProvider.cards[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showAddCardDialog(BuildContext context, CardProvider cardProvider) {
    final TextEditingController nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Ajouter une nouvelle carte'),
          content: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Entrez le nom',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Ajouter'),
              onPressed: () {
                if (nameController.text.isNotEmpty) {
                  final newCard = LoyaltyCard()
                    ..name = nameController.text
                    ..identifier = nameController.text.toLowerCase();

                  cardProvider.addCard(newCard);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
