import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/presentation/widgets/CustomDetailsScreenAppbar.dart';
import 'package:booky_app/presentation/widgets/CustomListVeiwItem.dart';
import 'package:flutter/material.dart';

class CustomDetailsScreen extends StatelessWidget {
  const CustomDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var weight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          CustomDetailsScreenAppbar(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: weight * 0.20),
            child: CustomListVeiwItem(),
          ),
          SizedBox(height: 42),
          Text("The Jungle Book", style: Styles.textStyle30),
          SizedBox(height: 6),

          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kiping",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
