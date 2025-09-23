import 'package:booky_app/data/repositories/HomeRepo.dart';
import 'package:booky_app/presentation/Cubits/FeaturedBooksCubit/FeaturedBooksState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFutureBooks() async {
    emit(FeaturedBooksLaoding());
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
