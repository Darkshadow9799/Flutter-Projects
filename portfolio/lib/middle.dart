import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                    ["Selected projects.".textSpan.yellow400.make()])
                .xl2
                .white
                .make(),
            10.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                ProjectWidget(title: "Cotoc").onTap(() {
                  launch(
                      "https://github.com/Darkshadow9799/Cotton_Diseases_Detection");
                }),
                ProjectWidget(title: "Car Resale Price Prediction").onTap(() {
                  launch("https://github.com/Darkshadow9799/CarPricePredictor");
                }),
                ProjectWidget(title: "Product Search").onTap(() {
                  launch("https://github.com/Darkshadow9799/Product_Search");
                }),
                ProjectWidget(title: "Spam Classifier").onTap(() {
                  launch(
                      "https://github.com/Darkshadow9799/Sms-Spam-Classifier");
                }),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ))
          ]).p32().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}
