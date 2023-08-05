import 'package:appnoteadjkasd/Features/home/data/models/book_model/repos/home_repo_impl.dart';
import 'package:appnoteadjkasd/Features/home/presentaion/maneger/feature/featured_books_cubit.dart';
import 'package:appnoteadjkasd/Features/home/presentaion/maneger/newset_books/newset_books_cubit.dart';
import 'package:appnoteadjkasd/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/utils/app_routers.dart';

void main() {
  setUp();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(
              getIt.get<HomeRepoImpl>(),
            ),
          ),
          BlocProvider(
            create: (context) => NewsetBooksCubit(
              getIt.get<HomeRepoImpl>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        ));
  }
}
