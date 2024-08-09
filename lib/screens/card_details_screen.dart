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
        title: Text(card.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cases cochées : ${card.checkedBoxes} / 20',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  final isChecked = index < card.checkedBoxes;
                  return GestureDetector(
                    onTap: () {
                      if (isChecked) {
                        card.checkedBoxes--;
                      } else {
                        card.checkedBoxes++;
                      }

                      if (card.checkedBoxes >= 20) {
                        card.rewardCount++;
                        card.checkedBoxes = 0;
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Félicitations!'),
                            content: const Text('Vous avez gagné un carton.'),
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
                    child: AspectRatio(
                      aspectRatio: 1,
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
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                const Icon(Icons.card_giftcard, color: Colors.orange),
                const SizedBox(width: 10),
                Text(
                  'Cartons gagnés : ${card.rewardCount}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
