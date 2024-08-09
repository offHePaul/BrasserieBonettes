import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/card_provider.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final cardProvider = Provider.of<CardProvider>(context);
    final TextEditingController searchController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: searchController,
        focusNode: focusNode,
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
        onTap: () {
          focusNode
              .requestFocus(); // S'assurer que le TextField reçoit le focus
        },
        onChanged: (value) {
          cardProvider.filterCards(value); // Filtrer lors de la saisie
        },
      ),
    );
  }
}
