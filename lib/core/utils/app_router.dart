import 'package:books_app/Features/home/presentation/views/book_details_view.dart';
import 'package:books_app/Features/home/presentation/views/home_view.dart';
import 'package:books_app/Features/search/presentation/views/search_view.dart';
import 'package:books_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
          builder: (context , index) => const SplashView(),
        ),
        GoRoute(
          path: kSearchView,
          builder: (context , index) => const SearchView(),
        ),
        GoRoute(
          path: kHomeView,
          builder: (context , index) => const HomeView(),
        ),
        GoRoute(
          path: kBookDetailsView,
          builder: (context , index) => const BookDetailsView(),
        ),
      ]
  );
}