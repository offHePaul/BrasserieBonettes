import 'package:flutter/material.dart';
import '../models/loyalty_card.dart';
import '../providers/card_provider.dart';
import 'package:provider/provider.dart';

class CardDetailsScreen extends StatelessWidget {
  final LoyaltyCard card;

  const CardDetailsScreen({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final cardProvider = Provider.of<CardProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(card.name, style: const TextStyle(fontSize: 18)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            constraints:
                const BoxConstraints(maxWidth: 800), // Limite la largeur totale
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Colonne d'informations
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        card.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 20.0),
                      _buildInfoRow(Icons.card_giftcard,
                          'Cartons gagnés : ${card.rewardCount}'),
                      const SizedBox(height: 10.0),
                      _buildInfoRow(Icons.calendar_today,
                          'Date d\'inscription : ${card.registrationDate.toLocal().toShortDateString()}'),
                      const SizedBox(height: 10.0),
                      _buildInfoRow(Icons.update,
                          'Dernière mise à jour : ${card.lastUpdated.toLocal().toShortDateString()}'),
                      const SizedBox(height: 10.0),
                      if (card.lastRewardDate != null)
                        _buildInfoRow(Icons.card_giftcard,
                            'Dernier carton reçu : ${card.lastRewardDate!.toLocal().toShortDateString()}'),
                    ],
                  ),
                ),
                const SizedBox(width: 40.0), // Espacement entre les colonnes

                // Colonne de la grille
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: AspectRatio(
                      aspectRatio:
                          1, // Assurez-vous que la grille soit un carré
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, // 4x4 grid
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 16, // Pour rendre la grille plus compacte
                        itemBuilder: (context, index) {
                          final isChecked = index < card.checkedBoxes;
                          return GestureDetector(
                            onTap: () {
                              if (isChecked) {
                                card.checkedBoxes--;
                              } else {
                                card.checkedBoxes++;
                              }

                              if (card.checkedBoxes >= 16) {
                                card.rewardCount++;
                                card.checkedBoxes = 0;
                                card.lastRewardDate = DateTime.now();
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: const Text('Félicitations!'),
                                    content: const Text(
                                        'Vous avez gagné un carton.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              cardProvider.updateCard(card);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isChecked ? Colors.green : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[800],
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}

extension DateTimeExtensions on DateTime {
  String toShortDateString() {
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/${year.toString()}';
  }
}
