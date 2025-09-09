import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarVeiw extends StatelessWidget {
  const CustomAppBarVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20, right: 16, left: 16),
      child: Row(
        children: [
          Image.asset("assets/images/Logo.png", height: 20),
          const Spacer(),

          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
          ),
        ],
      ),
    );
  }
}
