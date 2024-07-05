import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_tile_list_view.dart';

class NewListBuilder extends StatefulWidget {
  const NewListBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewListBuilder> createState() => _NewListBuilderState();
}

class _NewListBuilderState extends State<NewListBuilder> {
  dynamic future;

  @override
  void initState() {
    super.initState();
    future = NewServices(dio: Dio()).getTopHeadLines(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AritcleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: SizedBox(
              height: 500,
              child: Center(child: Text('OOps There Was an error')),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: SizedBox(
              height: 500,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
