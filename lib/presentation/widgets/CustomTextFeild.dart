import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final void Function(String)? onPressed;

  const CustomTextFeild({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Search for a book...',
        prefixIcon: Icon(Icons.search),
        suffixIcon: IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () {
            if (onPressed != null) {
              onPressed!(controller.text);
            }
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onSubmitted: (value) {
        if (onPressed != null) {
          onPressed!(value);
        }
      },
    );
  }
}
