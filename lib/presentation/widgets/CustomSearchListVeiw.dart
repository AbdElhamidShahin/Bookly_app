import 'package:booky_app/presentation/Cubits/SearchBooksCubit/SearchBooksCubit.dart';
import 'package:booky_app/presentation/Cubits/SearchBooksCubit/SearchBooksState.dart';
import 'package:booky_app/presentation/widgets/BestSellarListVeiwItem.dart';
import 'package:booky_app/presentation/widgets/CustomErrorWidget.dart';
import 'package:booky_app/presentation/widgets/CustomLoadingWidget.dart';
import 'package:booky_app/presentation/widgets/CustomSearchViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchListVeiw extends StatelessWidget {
  const CustomSearchListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return CustomSearchViewItem(bookModel: state.books[index]);
            },
          );
        } else if (state is SearchBooksFalier) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingWidget();
        }
      },
    );
  }
}
