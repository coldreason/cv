import 'package:get/get.dart';

import 'package:cv/app/modules/blog/bindings/blog_binding.dart';
import 'package:cv/app/modules/blog/views/blog_view.dart';
import 'package:cv/app/modules/cv/bindings/cv_binding.dart';
import 'package:cv/app/modules/cv/views/cv_view.dart';
import 'package:cv/app/modules/home/bindings/home_binding.dart';
import 'package:cv/app/modules/home/views/home_view.dart';
import 'package:cv/app/modules/project/bindings/project_binding.dart';
import 'package:cv/app/modules/project/views/project_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: _Paths.CV,
        page: () => CvView(),
        binding: CvBinding(),
        transition: Transition.zoom),
    GetPage(
        name: _Paths.PROJECT,
        page: () => ProjectView(),
        binding: ProjectBinding(),
        transition: Transition.zoom),
    GetPage(
        name: _Paths.BLOG,
        page: () => BlogView(),
        binding: BlogBinding(),
        transition: Transition.zoom),
  ];
}
