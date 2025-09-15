import 'package:booky_app/presentation/screens/CustomDetailsVeiw.dart';
import 'package:booky_app/presentation/widgets/CustomDetailsScreenAppbar.dart';
import 'package:flutter/material.dart';

class CustomDetailsScreen extends StatelessWidget {
  const CustomDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [CustomDetailsScreenAppbar()]));
  }
}
