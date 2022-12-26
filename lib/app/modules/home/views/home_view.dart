import 'package:cubixd/cubixd.dart';
import 'package:cv/app/routes/app_pages.dart';
import 'package:cv/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.black,
          CustomColors.crimson,
        ],
      )),
      child: Center(
          child: AnimatedCubixD(
        size: 300,
        selDuration: Duration(milliseconds: 100),
        advancedXYposAnim: AnimRequirements(
          controller: controller.ctrl,
          xAnimation: Tween<double>(begin: -pi / 4, end: pi * 2 - pi / 4)
              .animate(controller.ctrl),
          yAnimation: Tween<double>(begin: pi / 4, end: pi / 4)
              .animate(controller.ctrl),
        ),
        stars: true,
        shadow: true,
        onSelected: (SelectedSide opt) {
          Map<SelectedSide, String> toMap = {
            SelectedSide.bottom: Routes.BLOG,
            SelectedSide.front: Routes.CV,
            SelectedSide.left: Routes.PROJECT,
            SelectedSide.top: Routes.BLOG,
            SelectedSide.back: Routes.CV,
            SelectedSide.right: Routes.PROJECT,
          };
          Get.toNamed(toMap[opt]!);
          return false;
        },
        top: CubeSurface(
          leftBottom: Color(0xff424242),
          topRight: Colors.black,
          text: "Blog",
        ),
        bottom: CubeSurface(
          leftBottom: Color(0xff424242),
          topRight: Colors.black,
          text: "Blog",
        ),
        left: CubeSurface(
          leftBottom: Color(0xff424242),
          topRight: Colors.black,
          text: "Project",
        ),
        right: CubeSurface(
          leftBottom: Color(0xff424242),
          topRight: Colors.black,
          text: "Project",
        ),
        front: CubeSurface(
          leftBottom: Color(0xff424242),
          topRight: Colors.black,
          text: "CV",
        ),
        back: CubeSurface(
          leftBottom: Color(0xff424242),
          topRight: Colors.black,
          text: "CV",
        ),
      )),
    ));
  }
}

class CubeSurface extends StatelessWidget {
  const CubeSurface(
      {Key? key,
      required this.leftBottom,
      required this.topRight,
      required this.text})
      : super(key: key);
  final Color leftBottom;
  final Color topRight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            leftBottom,
            topRight,
          ],
        )),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ));
  }
}
