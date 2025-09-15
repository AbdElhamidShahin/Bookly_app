import 'package:booky_app/core/constants/Strings.dart';
import 'package:booky_app/presentation/widgets/BestSellerListVeiw.dart';
import 'package:flutter/material.dart';
import '../../core/utils/style.dart';
import '../widgets/BestSellarListVeiwItem.dart';
import '../widgets/CustomAppBarVeiw.dart';
import '../widgets/FutureBooksListVeiw.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomAppBarVeiw(),
              ),
              FutureBooksListVeiw(),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),

                child: Text("Best Sellar", style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(child: BestSellerListVeiw()),
      ],
    );
  }
}
