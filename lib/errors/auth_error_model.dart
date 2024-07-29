import 'package:readit/Core/api_helper/endPoints.dart';

class AuthErrorModel {
  final int status;
  final String errorMessage;

  AuthErrorModel({required this.status, required this.errorMessage});

  factory AuthErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return AuthErrorModel(
      status: jsonData[ApiKeys.status],
      errorMessage: jsonData[ApiKeys.errMessage],
    );
  }
}
