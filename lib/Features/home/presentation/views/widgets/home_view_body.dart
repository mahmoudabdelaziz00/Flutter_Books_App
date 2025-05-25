import 'package:books_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:books_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:books_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Style.titleMedium,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
