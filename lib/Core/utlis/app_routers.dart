import 'package:go_router/go_router.dart';
import 'package:readit/Features/01.welcome/views/widgets/welcome_screen.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),

  ],
  );
}
