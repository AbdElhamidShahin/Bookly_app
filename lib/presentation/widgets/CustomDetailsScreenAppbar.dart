import 'package:booky_app/core/constants/Strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDetailsScreenAppbar extends StatelessWidget {
  const CustomDetailsScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            context.go(KhomeVeiw);
          },
          icon: Icon(Icons.close),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
