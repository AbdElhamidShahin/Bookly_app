
import 'package:booky_app/presentation/widgets/BestSellarListVeiwItem.dart';
import 'package:flutter/material.dart';

class BestSellerListVeiw extends StatelessWidget {
  const BestSellerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return BestSellarListVeiwItem();
      },
    );
  }
}
