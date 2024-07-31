import 'package:dartz/dartz.dart';
import 'package:readit/Core/Api_helper/api_consumer.dart';
import 'package:readit/Core/api_helper/endPoints.dart';
import 'package:readit/Features/03.home/data/errors/book_exceptions.dart';
import '../models/Book_model/BookModel.dart';

class BooksRepo {
  final ApiConsumer api;

  BooksRepo({required this.api});

  Future<Either<String, List<BookModel>>> getAllBooks() async {
    try {
      final response =
          await api.get(EndPoint.getAllBooks, queryParameters: EndPoint.apiKey);
      List<BookModel> books = [];
      for (var item in response) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } on ServerBookExceptions catch (e) {
      return Left(e.bookErrorModel.fault!.faultstring!);
    }
  }
}
