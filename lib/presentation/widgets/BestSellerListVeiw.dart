import 'package:booky_app/presentation/Cubits/NewsedBooksCubit/NewsedBooksCubit.dart';
import 'package:booky_app/presentation/Cubits/NewsedBooksCubit/NewsedBooksState.dart';
import 'package:booky_app/presentation/widgets/BestSellarListVeiwItem.dart';
import 'package:booky_app/presentation/widgets/CustomErrorWidget.dart';
import 'package:booky_app/presentation/widgets/CustomLoadingWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListVeiw extends StatelessWidget {
  BestSellerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsedBooksCubit, NewsedBooksState>(
      builder: (BuildContext context, state) {
        if (state is NewsedBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BestSellarListVeiwItem(
                  bookModel: state.books[index]);
            },
          );
        }
        if (state is NewsedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingWidget();
        }
      },
    );
  }
}
