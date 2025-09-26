import 'package:booky_app/data/models/book_model/book_model.dart';

abstract class SearchBooksState {}

class SearchBooksInitial extends SearchBooksState {}

class SearchBooksSuccess extends SearchBooksState {
  final List<BookModel> books;

  SearchBooksSuccess(this.books);
}

class SearchBooksFalier extends SearchBooksState {
  final String errorMessage;

  SearchBooksFalier(this.errorMessage);
}

class SearchBooksLoading extends SearchBooksState {}
