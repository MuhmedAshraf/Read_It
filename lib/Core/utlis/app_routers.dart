import 'package:go_router/go_router.dart';
import 'package:readit/Features/01.welcome/views/welcome_screen.dart';
import 'package:readit/Features/02.auth/presentation/views/sign_in_screen.dart';
import 'package:readit/Features/02.auth/presentation/views/sign_up_screen.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSignInScreen = '/SignInScreen';
  static const kSignUpScreen = '/SignUpScreen';
  static const kBookDetailsView = '/BookDetailView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: kSignInScreen,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: kSignUpScreen,
        builder: (context, state) => const SignUpScreen(),
      ),

  ],
  );
}
