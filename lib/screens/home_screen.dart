import 'package:brasserie/screens/all_cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/loyalty_card.dart';
import '../providers/card_provider.dart';
import '../widgets/loyalty_card_widget.dart';

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
            onPressed: () {},
            icon: const Icon(Icons.bar_chart_rounded),
          ),
          const SizedBox(width: 20),
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
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Rechercher par nom',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  cardProvider.filterCards(value); // Filtrer lors de la saisie

                  if (cardProvider.cards.isEmpty && value.isNotEmpty) {
                    // Afficher une Snackbar si aucun résultat n'est trouvé
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Row(
                          children: [
                            Icon(Icons.search_off, color: Colors.white),
                            SizedBox(width: 10),
                            Text('Aucune carte trouvée pour cette recherche.'),
                          ],
                        ),
                        backgroundColor: Colors.orange,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  }
                },
              )),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10.0),
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
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.add_box, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text('Ajouter une nouvelle carte'),
            ],
          ),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Nom du client',
                    hintText: 'Entrez le nom',
                    prefixIcon: const Icon(Icons.person_outline),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer un nom';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton.icon(
              icon: const Icon(Icons.cancel, color: Colors.white),
              label: const Text(
                'Annuler',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.add, color: Colors.white),
              label: const Text(
                'Ajouter',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  final newCard = LoyaltyCard()
                    ..name = nameController.text
                    ..identifier = nameController.text.toLowerCase();

                  cardProvider.addCard(newCard);
                  Navigator.of(context).pop();

                  // Afficher la Snackbar après l'ajout
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          const Icon(Icons.check_circle, color: Colors.white),
                          const SizedBox(width: 10),
                          Text('Nouvelle carte ajoutée pour ${newCard.name}!'),
                        ],
                      ),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }
}
