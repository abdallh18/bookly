import 'package:appnoteadjkasd/Features/home/data/models/book_model/book_model.dart';
import 'package:appnoteadjkasd/Features/home/data/models/book_model/repos/home_repo_impl.dart';
import 'package:appnoteadjkasd/Features/home/presentaion/maneger/similar_books/similar_books_cubit.dart';
import 'package:appnoteadjkasd/Features/search/presintion/views/search_view.dart';
import 'package:appnoteadjkasd/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentaion/views/book_detalis_view.dart';
import '../../Features/home/presentaion/views/home_view.dart';
import '../../Features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/bookDetailsView';
  static const KsearchView = '/searchView';

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
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child:  BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: KsearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
