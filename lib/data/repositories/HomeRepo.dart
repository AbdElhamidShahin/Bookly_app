import 'package:booky_app/core/error/Falier.dart';
import 'package:booky_app/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Falier, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Falier, List<BookModel>>> fetchFutureBooks();
  Future<Either<Falier, List<BookModel>>> fetchSearchBooks({required String query});
  Future<Either<Falier, List<BookModel>>> fetchSmilarBooks({
    required String category,
  });
}
