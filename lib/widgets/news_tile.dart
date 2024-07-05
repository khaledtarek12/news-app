import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.aritcleModel});
  final AritcleModel aritcleModel;
  // final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: aritcleModel.image != null
                ? Image.network(
                    aritcleModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : const SizedBox(
                    height: 200,
                    width: double.infinity,
                  )),
        const SizedBox(
          height: 12,
        ),
        Text(
          aritcleModel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          aritcleModel.subtitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
