import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readit/Core/shared_widgets/custom_loading.dart';
import 'package:readit/Features/02.auth/presentation/view_model/user_cubit/user_state.dart';
import 'package:readit/Features/02.auth/presentation/views/widgets/custom_input_field.dart';
import 'package:readit/Features/02.auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:readit/Features/02.auth/presentation/views/widgets/forget_password_widget.dart';
import 'package:readit/Features/02.auth/presentation/views/widgets/page_heading.dart';
import '../../../../Core/shared_widgets/custom_button.dart';
import '../../../../Core/shared_widgets/page_header.dart';
import '../view_model/user_cubit/user_cubit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEF1F3),
        body: Column(
          children: [
            PageHeader(),
            BlocConsumer<UserCubit, UserState>(
              listener: (context, state) {
                if(state is SignInFailure){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errMessage)));
                }
                else if(state is SignInSuccess){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
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
                        key: context.read<UserCubit>().signInFormKey,
                        child: Column(
                          children: [
                            const PageHeading(title: 'Sign-in'),
                            //!Email
                            CustomInputField(
                              labelText: 'Email',
                              hintText: 'Your email',
                              controller: context.read<UserCubit>().signInEmail,
                            ),
                            const SizedBox(height: 16),
                            //!Password
                            CustomInputField(
                              labelText: 'Password',
                              hintText: 'Your password',
                              obscureText: true,
                              suffixIcon: true,
                              controller:
                                  context.read<UserCubit>().signInPassword,
                            ),
                            const SizedBox(height: 16),
                            //! Forget password?
                            ForgetPasswordWidget(size: size),
                            const SizedBox(height: 20),
                            //!Sign In Button
                           state is SignInLoading? const CustomLoading(): CustomButton(
                              innerText: 'Sign In',
                              onPressed: () {
                                context.read<UserCubit>().signIn();
                              },
                            ),
                            const SizedBox(height: 18),
                            //! Don't Have An Account ?
                            DontHaveAnAccountWidget(size: size),
                            const SizedBox(height: 20),
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
