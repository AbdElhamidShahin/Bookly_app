import 'package:booky_app/data/models/book_model/book_model.dart';
import 'package:booky_app/presentation/widgets/BestSellarListVeiwItem.dart';
import 'package:flutter/material.dart';

class BestSellerListVeiw extends StatelessWidget {
  BestSellerListVeiw({super.key});

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
