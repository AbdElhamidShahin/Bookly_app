import 'package:booky_app/core/constants/Strings.dart';
import 'package:booky_app/presentation/Cubits/FeaturedBooksCubit/FeaturedBooksCubit.dart';
import 'package:booky_app/presentation/Cubits/FeaturedBooksCubit/FeaturedBooksState.dart';
import 'package:booky_app/presentation/widgets/CustomErrorWidget.dart';
import 'package:booky_app/presentation/widgets/CustomLoadingWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'CustomListVeiwItem.dart';

class FutureBooksListVeiw extends StatelessWidget {
  const FutureBooksListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      context.go(KdetailsScreen, extra: state.books[index]);
                    },
                    child: CustomListVeiwItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingWidget();
        }
      },
    );
  }
}
