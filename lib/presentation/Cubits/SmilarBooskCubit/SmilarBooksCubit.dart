import 'package:booky_app/data/repositories/HomeRepo.dart';
import 'package:booky_app/presentation/Cubits/SmilarBooskCubit/SmilarBooksState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmilarBooksCubit extends Cubit<SmilarBooksState> {
  SmilarBooksCubit(this.homeRepo) : super(SmilaBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSmilarBooks({required String category}) async {
    emit(SmilaBooksLoading());
    var result = await homeRepo.fetchSmilarBooks(category: category);
    result.fold(
      (falier) {
        emit(SmilaBooksFailure(falier.errorMessage));
      },
      (books) {
        emit(SmilaBooksSuccess(books));
      },
    );
  }
}
