import 'package:booky_app/core/constants/Strings.dart';
import 'package:booky_app/core/utils/ServiceLocator.dart';
import 'package:booky_app/data/models/book_model/book_model.dart';
import 'package:booky_app/data/repositories/HomeRepoImp.dart';
import 'package:booky_app/presentation/Cubits/SmilarBooskCubit/SmilarBooksCubit.dart';
import 'package:booky_app/presentation/screens/CustomDetailsVeiw.dart';
import 'package:booky_app/presentation/screens/HomeView.dart';
import 'package:booky_app/presentation/screens/SearchVeiw.dart';
import 'package:booky_app/presentation/screens/SplashPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: KsplashScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: KhomeVeiw,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: KdetailsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => SmilarBooksCubit(getIt.get<HomeRepoImp>()),
          child: CustomDetailsScreen(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: KsearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
