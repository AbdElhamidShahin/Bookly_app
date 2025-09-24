import 'package:booky_app/core/error/Falier.dart';
import 'package:booky_app/presentation/Cubits/SmilarBooskCubit/SmilarBooksCubit.dart';
import 'package:booky_app/presentation/Cubits/SmilarBooskCubit/SmilarBooksState.dart';
import 'package:booky_app/presentation/widgets/CustomErrorWidget.dart';
import 'package:booky_app/presentation/widgets/CustomListVeiwItem.dart';
import 'package:booky_app/presentation/widgets/CustomLoadingWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListVeiw extends StatelessWidget {
  const SimilerBooksListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: BlocBuilder<SmilarBooksCubit, SmilarBooksState>(
        builder: (BuildContext context, SmilarBooksState state) {
          if (state is SmilaBooksSuccess) {
            return ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CustomListVeiwItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail?? '',
                  ),
                );
              },
            );
          } else if (state is SmilaBooksFailure) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return CustomLoadingWidget();
          }
        },
      ),
    );
    ;
  }
}
