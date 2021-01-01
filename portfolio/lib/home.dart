import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'middle.dart';
import 'footer.dart';
import 'coolors.dart';
import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
