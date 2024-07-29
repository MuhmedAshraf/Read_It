import 'package:image_picker/image_picker.dart';
import 'package:readit/Core/Api_helper/api_consumer.dart';
import 'package:readit/Core/api_helper/endPoints.dart';
import 'package:readit/Features/02.auth/data/model/signIn_model.dart';
import 'package:dartz/dartz.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../../../../Core/cache_helper/cache_helper.dart';
import '../../../../Core/functions/uploadImageToApi.dart';
import '../../../../errors/exceptions.dart';
import '../model/signUp_model.dart';

class AuthRepo {
  final ApiConsumer api;

  AuthRepo({required this.api});

  Future<Either<String, SignInModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await api.post(
        EndPoint.signIn,
        data: {
          ApiKeys.email: email,
          ApiKeys.password: password,
        },
      );
      final SignInModel user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user.token);
      CacheHelper().saveData(key: ApiKeys.token, value: user.token);
      CacheHelper().saveData(key: ApiKeys.id, value: decodedToken[ApiKeys.id]);
      return Right(user);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }

  Future<Either<String, SignUpModel>> signUp({
    required String email,
    required String password,
    required String confirmPassword,
    required String phone,
    required String name,
    required XFile profilePic,
  }) async {
    try {
      final response = await api.post(
        EndPoint.signUp,
        isFormData: true,
        data: {
          ApiKeys.name: name,
          ApiKeys.email: email,
          ApiKeys.password: password,
          ApiKeys.phone: phone,
          ApiKeys.confirmPassword: confirmPassword,
          ApiKeys.location:
          '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
          ApiKeys.profilePic: await uploadImageToApi(profilePic),
        },
      );
      final SignUpModel user = SignUpModel.fromJson(response);
      return Right(user);
    } on ServerException catch (e) {
    return Left(e.errorModel.errorMessage);
    }
  }
}
