import 'package:flutter/material.dart';
import '../widgets/CustomAppBarVeiw.dart';
import '../widgets/CustomListVeiwItem.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBarVeiw(), FutureBooksListVeiw()]);
  }
}

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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomListVeiwItem(),
          );
        },
      ),
    );
  }
}
