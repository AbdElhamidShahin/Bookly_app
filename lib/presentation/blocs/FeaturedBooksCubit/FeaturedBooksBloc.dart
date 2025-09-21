import 'package:booky_app/data/repositories/HomeRepo.dart';
import 'package:booky_app/presentation/blocs/FeaturedBooksCubit/FeaturedBooksState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksBloc extends Cubit<FeaturedBooksState> {
  FeaturedBooksBloc(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFutureBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFutureBooks();
    result.fold(
      (falier) {
        emit(FeaturedBooksFailure(falier.errorMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
