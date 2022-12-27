import 'package:cv/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/cv_controller.dart';

class CvView extends GetView<CvController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.darkGray,
        title: Text('CV'),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: CvConstants.cvCategoryWidth,
              color: CustomColors.darkGray,
              child: Column(children: <Widget>[
                CategoryArea(
                  height: CvConstants.cvProfileHeight,
                  child: Center(
                      child: Text(
                    'face',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                CategoryItem(height: 100, text: 'Experience'),
                CategoryItem(height: 100, text: 'Project'),
                CategoryItem(height: 100, text: 'Award'),
                CategoryItem(height: 100, text: 'Skills'),
                CategoryItem(
                  height: 100,
                  text: 'Extracurricular Activities',
                ),
              ]),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CategoryArea(
                        height: CvConstants.cvProfileHeight,
                        child: Center(
                            child: GetBuilder<CvController>(builder: (_) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  controller.cv.name ?? "",
                                  style: GoogleFonts.lato(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black),
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              CvProfileDescription(text:controller.cv.position ?? ""),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CvProfileDescription(text:controller.cv.email ?? ""),
                                  Text("|"),
                                  CvProfileDescription(text:controller.cv.github ?? ""),
                                  Text("|"),
                                  CvProfileDescription(text:controller.cv.contact ?? ""),
                                ],
                              ),
                            ],
                          );
                        })),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
class CvProfileDescription extends StatelessWidget {
  const CvProfileDescription({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: GoogleFonts.lato(
          textStyle:
          Theme.of(context).textTheme.headline4,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}


class CategoryArea extends StatelessWidget {
  const CategoryArea({Key? key, required this.child, required this.height})
      : super(key: key);
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: height,
      child: Column(
        children: [
          Expanded(child: child),
          Divider(
            color: Colors.grey,
            thickness: 3,
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.height, required this.text})
      : super(key: key);
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CategoryArea(
      height: height,
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          text,
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}

class ContentItem extends StatelessWidget {
  const ContentItem({Key? key, required this.height, required this.text})
      : super(key: key);
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CategoryArea(
      height: height,
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
