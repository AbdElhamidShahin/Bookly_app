import 'package:flutter/material.dart';

import 'CustomListVeiwItem.dart';

class FutureBooksListVeiw extends StatelessWidget {
  const FutureBooksListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomListVeiwItem(),
          );
        },
      ),
    );
  }
}
