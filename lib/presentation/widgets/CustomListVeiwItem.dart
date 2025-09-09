
import 'package:flutter/material.dart';

class CustomListVeiwItem extends StatelessWidget {
  const CustomListVeiwItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            image: AssetImage("assets/images/test_image.png"),
            fit: BoxFit.fill, // ممكن تغيرها حسب احتياجك
          ),
        ),
      ),
    );
  }
}
