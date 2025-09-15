import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/utils/style.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 18),
        SizedBox(width: 6.3),

        Text(
          "4.8",
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w800),
        ),
        SizedBox(width: 5),
        Text(
          "(2390)",
          style: Styles.textStyle16.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
