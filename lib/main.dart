import 'package:booky_app/core/utils/AppRouter.dart';
import 'package:booky_app/core/utils/ServiceLocator.dart';
import 'package:booky_app/data/repositories/HomeRepoImp.dart';
import 'package:booky_app/presentation/Cubits/FeaturedBooksCubit/FeaturedBooksCubit.dart';
import 'package:booky_app/presentation/Cubits/NewsedBooksCubit/NewsedBooksCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';

void main() {
  setupSeviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImp>())..fetchFutureBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsedBooksCubit(getIt.get<HomeRepoImp>())
                ..fetchBestSellerBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
