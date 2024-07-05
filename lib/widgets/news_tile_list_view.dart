import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  final List<AritcleModel> articles;

  const NewsTileListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 22,
          ),
          child: NewsTile(
            aritcleModel: articles[index],
          ),
        );
      },
    ));
  }
}
