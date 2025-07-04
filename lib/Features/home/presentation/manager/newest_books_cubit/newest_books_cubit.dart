import 'package:bloc/bloc.dart';
import 'package:books_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errorMsg));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
