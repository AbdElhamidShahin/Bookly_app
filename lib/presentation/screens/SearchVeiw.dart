import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/presentation/screens/SearchVeiw.dart';
import 'package:booky_app/presentation/widgets/BestSellarListVeiwItem.dart';
import 'package:booky_app/presentation/widgets/CustomTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextFeild(),
            ),
            SizedBox(height: 16,),
            Text("Search Result", style: Styles.textStyle18),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomSearchListVeiw(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}