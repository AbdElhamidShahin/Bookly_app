import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/presentation/Cubits/SearchBooksCubit/SearchBooksCubit.dart';
import 'package:booky_app/presentation/widgets/CustomSearchListVeiw.dart';
import 'package:booky_app/presentation/widgets/CustomTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  SearchView({super.key});
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    context.read<SearchBooksCubit>().loadAllBooks();


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child:CustomTextFeild(
                onPressed: (value) {
                  if (value.isNotEmpty) {
                    context.read<SearchBooksCubit>().searchLocal(value);
                  }
                },
              ),

            ),
            const SizedBox(height: 16),
            Text("Search Result", style: Styles.textStyle18),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const CustomSearchListVeiw(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
