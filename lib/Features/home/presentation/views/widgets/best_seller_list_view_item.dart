import 'package:books_app/Features/home/data/models/book_model/book_model.dart';
import 'package:books_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:books_app/Features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:books_app/constant.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImageItem(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Style.textStyle14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Style.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(rating: 0, count: 0),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
