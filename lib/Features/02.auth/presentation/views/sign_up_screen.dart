import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:readit/Core/shared_widgets/custom_loading.dart';
import 'package:readit/Core/utlis/app_routers.dart';
import 'package:readit/Features/02.auth/presentation/view_model/user_cubit/user_state.dart';
import '../view_model/user_cubit/user_cubit.dart';
import 'widgets/already_have_an_account_widget.dart';
import 'widgets/custom_form_button.dart';
import 'widgets/custom_input_field.dart';
import 'widgets/page_header.dart';
import 'widgets/page_heading.dart';
import 'widgets/pick_image_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEF1F3),
        body: Column(
          children: [
            PageHeader(),
            BlocConsumer<UserCubit, UserState>(
              listener: (context, state) {
                if(state is SignUpFailure){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errMessage)));
                }
                else if(state is SignUpSuccess){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
                  GoRouter.of(context).push('/');
                }
              },
              builder: (context, state) {
                return Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        key: context.read<UserCubit>().signUpFormKey,
                        child: Column(
                          children: [
                            const PageHeading(title: 'Sign-up'),
                            //! Image
                            const PickImageWidget(),
                            const SizedBox(height: 16),
                            //! Name
                            CustomInputField(
                              labelText: 'Name',
                              hintText: 'Your name',
                              isDense: true,
                              controller: context.read<UserCubit>().signUpName,
                            ),
                            const SizedBox(height: 16),
                            //!Email
                            CustomInputField(
                              labelText: 'Email',
                              hintText: 'Your email',
                              isDense: true,
                              controller: context.read<UserCubit>().signUpEmail,
                            ),
                            const SizedBox(height: 16),
                            //! Phone Number
                            CustomInputField(
                              labelText: 'Phone number',
                              hintText: 'Your phone number ex:01234567890',
                              isDense: true,
                              controller:
                                  context.read<UserCubit>().signUpPhoneNumber,
                            ),
                            const SizedBox(height: 16),
                            //! Password
                            CustomInputField(
                              labelText: 'Password',
                              hintText: 'Your password',
                              isDense: true,
                              obscureText: true,
                              suffixIcon: true,
                              controller:
                                  context.read<UserCubit>().signUpPassword,
                            ),
                            //! Confirm Password
                            CustomInputField(
                              labelText: 'Confirm Password',
                              hintText: 'Confirm Your password',
                              isDense: true,
                              obscureText: true,
                              suffixIcon: true,
                              controller:
                                  context.read<UserCubit>().confirmPassword,
                            ),
                            const SizedBox(height: 22),
                            //!Sign Up Button
                           state is SignUpLoading? const CustomLoading(): CustomFormButton(
                              innerText: 'Signup',
                              onPressed: () {
                                context.read<UserCubit>().signUp();
                              },
                            ),
                            const SizedBox(height: 18),
                            //! Already have an account widget
                            const AlreadyHaveAnAccountWidget(),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
