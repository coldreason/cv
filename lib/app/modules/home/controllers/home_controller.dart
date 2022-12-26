import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeController
  late final AnimationController ctrl;

  @override
  void onInit() async {
    ctrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 20));
    ctrl.forward();

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
