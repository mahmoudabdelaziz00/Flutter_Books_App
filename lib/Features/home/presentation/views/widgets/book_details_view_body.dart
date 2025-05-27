import 'package:books_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:books_app/Features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width ;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: CustomBookImageItem(),
          ),
          SizedBox(height: 40,),
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
        ],
      ),
    );
  }
}
