import 'package:dio/dio.dart';
import 'package:readit/Features/03.home/data/errors/book_error_model/BookErrorModel.dart';

class ServerBookExceptions implements Exception {
  final BookErrorModel bookErrorModel;

  ServerBookExceptions({required this.bookErrorModel});
}

void handleDioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerBookExceptions(
          bookErrorModel: BookErrorModel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerBookExceptions(
          bookErrorModel: BookErrorModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ServerBookExceptions(
          bookErrorModel: BookErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerBookExceptions(
          bookErrorModel: BookErrorModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerBookExceptions(
          bookErrorModel: BookErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerBookExceptions(
          bookErrorModel: BookErrorModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerBookExceptions(
          bookErrorModel: BookErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400:
          throw ServerBookExceptions(
              bookErrorModel:
                  BookErrorModel.fromJson(e.response!.data)); // bad Request
        case 401:
          throw ServerBookExceptions(
              bookErrorModel:
                  BookErrorModel.fromJson(e.response!.data)); // Un Authorized
        case 403:
          throw ServerBookExceptions(
              bookErrorModel:
                  BookErrorModel.fromJson(e.response!.data)); // forbidden
        case 404:
          throw ServerBookExceptions(
              bookErrorModel:
                  BookErrorModel.fromJson(e.response!.data)); // Not Found
        case 409:
          throw ServerBookExceptions(
              bookErrorModel:
                  BookErrorModel.fromJson(e.response!.data)); // coefficient
        case 422:
          throw ServerBookExceptions(
              bookErrorModel: BookErrorModel.fromJson(
                  e.response!.data)); // Un Processable Entity
        case 504:
          throw ServerBookExceptions(
              bookErrorModel: BookErrorModel.fromJson(e.response!.data));
      }
  }
}
