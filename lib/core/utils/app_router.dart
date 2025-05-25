import 'package:books_app/Features/home/presentation/views/home_view.dart';
import 'package:books_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static const kHomeView = '/homeView';
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
          builder: (context , index) => const SplashView(),
        ),
        GoRoute(
          path: kHomeView,
          builder: (context , index) => const HomeView(),
        ),
      ]
  );
}