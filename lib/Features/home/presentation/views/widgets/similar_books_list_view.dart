import 'package:flutter/material.dart';

import 'custom_book_image_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImageItem(),
          );
        },
      ),
    );
  }
}
