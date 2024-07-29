import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:readit/Features/02.auth/presentation/view_model/user_cubit/user_state.dart';

import '../../../data/repo/auth_repo.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({required this.authRepo}) : super(UserInitial());

  final AuthRepo authRepo;

  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();

  //Sign in email
  TextEditingController signInEmail = TextEditingController();

  //Sign in password
  TextEditingController signInPassword = TextEditingController();

  //Sign Up Form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  //Profile Pic
  XFile? profilePic;

  //Sign up name
  TextEditingController signUpName = TextEditingController();

  //Sign up phone number
  TextEditingController signUpPhoneNumber = TextEditingController();

  //Sign up email
  TextEditingController signUpEmail = TextEditingController();

  //Sign up password
  TextEditingController signUpPassword = TextEditingController();

  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();

  //update name
  TextEditingController newName = TextEditingController();

  //update Phone
  TextEditingController newPhone = TextEditingController();

  signIn() async {
    emit(SignInLoading());
    final response = await authRepo.signIn(
      email: signInEmail.text,
      password: signInPassword.text,
    );
    response.fold(
      (errMessage) => emit(SignInFailure(errMessage: errMessage)),
      (user) => emit(SignInSuccess(message: user.message)),
    );
  }

  uploadProfilePic(XFile image) {
    profilePic = image;
    emit(UploadProfilePic());
  }

  signUp() async {
    emit(SignUpLoading());
    final response = await authRepo.signUp(
      email: signUpEmail.text,
      password: signUpPassword.text,
      confirmPassword: confirmPassword.text,
      phone: signUpPhoneNumber.text,
      name: signUpName.text,
      profilePic: profilePic!,
    );
    response.fold(
      (errMessage) => emit(SignInFailure(errMessage: errMessage)),
      (user) => emit(SignUpSuccess(message: user.message)),
    );
  }

}
