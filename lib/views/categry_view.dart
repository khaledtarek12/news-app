import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/new_list_builder.dart';

class CategryView extends StatelessWidget {
  const CategryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: CustomScrollView(
          slivers: [
            NewListBuilder(category: category),
          ],
        ),
      ),
    );
  }
}
