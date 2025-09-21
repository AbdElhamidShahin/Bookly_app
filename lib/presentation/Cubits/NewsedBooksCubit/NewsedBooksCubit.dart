import 'package:booky_app/data/repositories/HomeRepo.dart';
import 'package:booky_app/presentation/Cubits/NewsedBooksCubit/NewsedBooksState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsedBooksCubit extends Cubit<NewsedBooksState> {
  NewsedBooksCubit(this.homeRepo) : super(NewsedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks() async {
    emit(NewsedBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold(
      (failure) {
        emit(NewsedBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(NewsedBooksSuccess(books));
      },
    );
  }
}
