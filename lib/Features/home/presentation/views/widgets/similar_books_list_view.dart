import 'package:books_app/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImageItem(
                    imageUrl:
                        'https://images.ctfassets.net/wcfotm6rrl7u/5hlgpWZre6MH68HeliLx2z/1fde29c9e52b49b68bee8cc8264e370b/HMD_Skyline-BlueTopaz-FrontBack-Int.png',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
