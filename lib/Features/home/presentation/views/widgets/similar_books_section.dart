import 'package:books_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can also like',
          style: Style.textStyle16.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 15,),
        SimilarBooksListView(),
      ],
    );
  }
}