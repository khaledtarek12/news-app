import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/categry_models.dart';
import 'package:news_app_ui_setup/widgets/categry_card.dart';

class CategryListView extends StatelessWidget {
  const CategryListView({super.key});
  final List<CategroyModel> card = const [
    CategroyModel(
      image: 'assets/1-1579592.webp',
      categryName: 'Business',
    ),
    CategroyModel(
      image: 'assets/entertaiment.avif',
      categryName: 'Entertainment',
    ),
    CategroyModel(
      image: 'assets/health.avif',
      categryName: 'Health',
    ),
    CategroyModel(
      image: 'assets/science.avif',
      categryName: 'Science',
    ),
    CategroyModel(
      image: 'assets/technology.jpeg',
      categryName: 'Technology',
    ),
    CategroyModel(
      image: 'assets/1.png',
      categryName: 'Sports',
    ),
    CategroyModel(
      image: 'assets/a21b9e076717cf73da5492b8bb52f37c.jpg',
      categryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: card.length,
        itemBuilder: (context, index) {
          return CategryCard(card: card[index]);
        },
      ),
    );
  }
}
