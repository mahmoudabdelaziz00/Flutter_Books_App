import 'package:books_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:books_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'books_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: const[
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 30,)),
                SimilarBooksSection(),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


