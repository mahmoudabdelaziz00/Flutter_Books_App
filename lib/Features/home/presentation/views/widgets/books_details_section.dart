import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_image_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width ;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22),
          child: CustomBookImageItem(),
        ),
        SizedBox(height: 30,),
        Text(
          'The Jungle Book',
          style: Style.textStyle30.copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 7,),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 10,),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 20,),
        BookAction(),
      ],
    );
  }
}
