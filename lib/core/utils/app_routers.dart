
import 'package:go_router/go_router.dart';

import '../../Features/home/presentaion/views/book_detalis_view.dart';
import '../../Features/home/presentaion/views/home_view.dart';
import '../../Features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/bookDetailsView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: KHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: KBookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    )
  ]);
}
