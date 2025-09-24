import 'package:booky_app/data/models/book_model/book_model.dart';

abstract class SmilarBooksState {}

class SmilaBooksInitial extends SmilarBooksState {}

class SmilaBooksFailure extends SmilarBooksState {
  final String errorMessage;

  SmilaBooksFailure(this.errorMessage);
}

class SmilaBooksSuccess extends SmilarBooksState {
  final List<BookModel> books;

  SmilaBooksSuccess(this.books);
}

class SmilaBooksLoading extends SmilarBooksState {}
