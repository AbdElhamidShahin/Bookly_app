import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/presentation/screens/CustomDetailsVeiw.dart';
import 'package:booky_app/presentation/widgets/BooksRating.dart';
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
            padding: EdgeInsets.symmetric(horizontal: weight * 0.25),
            child: CustomListVeiwItem(),
          ),
          SizedBox(height: 32),
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

          SizedBox(height: 24),
          BooksRating(mainAxisAlignment: MainAxisAlignment.center),
          SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                    backgroundColor: Colors.white,
                    text: "19.99\$",
                    fontSize: 16,
                    textColor: Colors.black,
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    backgroundColor: Color(0xffEF8262),
                    text: "Free PreView",
                    fontSize: 16,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
