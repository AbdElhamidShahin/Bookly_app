import 'package:booky_app/data/models/book_model/book_model.dart';

abstract class NewsedBooksState {}

class NewsedBooksInitial extends NewsedBooksState {}

class NewsedBooksFailure extends NewsedBooksState {
  final String errorMessage;

  NewsedBooksFailure(this.errorMessage);
}

class NewsedBooksSuccess extends NewsedBooksState {
  final List<BookModel> books;

  NewsedBooksSuccess(this.books);
}

class NewsedBooksLoading extends NewsedBooksState {}
