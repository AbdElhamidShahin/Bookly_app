import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booky_app/data/models/book_model/book_model.dart';
import 'package:booky_app/data/repositories/HomeRepo.dart';
import 'SearchBooksState.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  final HomeRepo homeRepo;
  List<BookModel> allBooks = [];

  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());

  // تحميل كل الكتب مرة واحدة من الـ APIs
  Future<void> loadAllBooks() async {
    emit(SearchBooksLoading());
    allBooks.clear();

    final best = await homeRepo.fetchBestSellerBooks();
    final future = await homeRepo.fetchFutureBooks();
    final similar = await homeRepo.fetchSmilarBooks(category: "Programming");

    best.fold((l) {}, (r) => allBooks.addAll(r));
    future.fold((l) {}, (r) => allBooks.addAll(r));
    similar.fold((l) {}, (r) => allBooks.addAll(r));

    emit(SearchBooksSuccess(allBooks));
  }

  // البحث المحلي
  void searchLocal(String query) {
    if (query.isEmpty) {
      emit(SearchBooksSuccess(allBooks)); // رجّع كل الكتب لو السيرش فاضي
      return;
    }

    final results = allBooks.where((book) {
      final title = book.volumeInfo.title?.toLowerCase() ?? "";
      final authors = book.volumeInfo.authors?.join(" ").toLowerCase() ?? "";
      return title.contains(query.toLowerCase()) || authors.contains(query.toLowerCase());
    }).toList();

    emit(SearchBooksSuccess(results));
  }
}
