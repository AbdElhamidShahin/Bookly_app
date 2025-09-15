
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/Strings.dart';

class SplashVeiwBody extends StatefulWidget {
  const SplashVeiwBody({super.key});

  @override
  State<SplashVeiwBody> createState() => _SplashVeiwBodyState();
}

class _SplashVeiwBodyState extends State<SplashVeiwBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationTextSplash();
    navigatorPushHome();
  }

  void navigatorPushHome() {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(KhomeVeiw);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/Logo.png"),
        SizedBox(height: 8),
        SlideTransition(
          position: slidingAnimation,
          child: Text(
            "Read Free Books",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  void animationTextSplash() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
}
