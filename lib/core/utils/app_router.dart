import 'package:bookly_app_clean_arch/features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app_clean_arch/features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/bookDetailView";
  static const kSearchView = "/SearchView";

  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    ],
  );
}
