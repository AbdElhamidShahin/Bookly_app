import 'package:booky_app/core/constants/Strings.dart';
import 'package:booky_app/presentation/screens/CustomDetailsVeiw.dart';
import 'package:booky_app/presentation/screens/HomeView.dart';
import 'package:booky_app/presentation/screens/SearchVeiw.dart';
import 'package:booky_app/presentation/screens/SplashPage.dart';
import 'package:flutter/material.dart';
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
        builder: (BuildContext context, GoRouterState state) {
          return const CustomDetailsScreen();
        },
      ),    GoRoute(
        path: KsearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
