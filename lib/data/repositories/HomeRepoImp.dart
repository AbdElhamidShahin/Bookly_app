import 'package:booky_app/core/error/Falier.dart';
import 'package:booky_app/core/utils/ApiServise.dart';
import 'package:booky_app/data/models/book_model/book_model.dart';
import 'package:booky_app/data/repositories/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServise apiServise;

  HomeRepoImp(this.apiServise);

  @override
  Future<Either<Falier, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiServise.getCatogaryData(
        endPoint:
            "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Falier, List<BookModel>>> fetchFutureBooks() async {
    try {
      var data = await apiServise.getCatogaryData(
        endPoint:
            "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Falier, List<BookModel>>> fetchSmilarBooks({
    required String category,
  }) async {
    try {
      var data = await apiServise.getCatogaryData(
        endPoint: "volumes?Filtering=free-ebooks&q=subject:Programming",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
