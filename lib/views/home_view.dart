import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categry_list_view.dart';
import 'package:news_app_ui_setup/widgets/new_list_builder.dart';


class HomeVoiew extends StatelessWidget {
  const HomeVoiew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategryListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewListBuilder(category: 'general'),
            ],
          ),
          //   child: Column(
          //     children: [
          //       CategryListView(),
          //       SizedBox(
          //         height: 32,
          //       ),
          //       Expanded(child: NewsTileListView()),
          //     ],
          //   ),
          // ),
        ));
  }
}


