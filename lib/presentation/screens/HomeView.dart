import 'package:booky_app/core/constants/Strings.dart';
import 'package:flutter/material.dart';
import '../../core/utils/style.dart';
import '../widgets/BestSellarListVeiwItem.dart';
import '../widgets/CustomAppBarVeiw.dart';
import '../widgets/FutureBooksListVeiw.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarVeiw(),
          FutureBooksListVeiw(),
          SizedBox(height: 40),
          Text("Best Sellar", style: Styles.textStyle18),
          SizedBox(height: 20),
          BestSellarListVeiwItem(),
        ],
      ),
    );
  }
}

