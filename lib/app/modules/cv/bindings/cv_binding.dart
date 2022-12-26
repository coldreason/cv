import 'package:cv/app/data/providers/cv_provider.dart';
import 'package:cv/app/modules/cv/repositories/cv_repository.dart';
import 'package:get/get.dart';

import '../controllers/cv_controller.dart';

class CvBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CvController>(
      () => CvController(repository: CvRepository(cvProvider: CvProvider())),
    );
  }
}
