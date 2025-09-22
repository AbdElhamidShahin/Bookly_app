
import 'package:booky_app/presentation/widgets/CustomListVeiwItem.dart';
import 'package:flutter/material.dart';

class SimilerBooksListVeiw extends StatelessWidget {
  const SimilerBooksListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomListVeiwItem(
              imageUrl: "https://wallpapers.com/images/featured-full/dark-phone-background-hylg8426ydj2r73s.jpg",
            ),
          );
        },
      ),
    );
    ;
  }
}
