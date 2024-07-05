import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/categry_models.dart';
import 'package:news_app_ui_setup/views/categry_view.dart';

class CategryCard extends StatelessWidget {
  const CategryCard({super.key, required this.card});

  final CategroyModel card;

  @override
  Widget build(BuildContext context) {
    {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategryView(
                  category: card.categryName,
                );
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(card.image)),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 200,
          height: 110,
          child: Center(
            child: Text(
              card.categryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }
  }
}
