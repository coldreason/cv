import 'package:cv/app/data/models/cv_model.dart';
import 'package:cv/app/modules/cv/repositories/cv_repository.dart';
import 'package:get/get.dart';

class CvController extends GetxController {
  final CvRepository repository;
  CvController({required this.repository});

  Cv cv = Cv();
  @override
  void onInit() async{
    super.onInit();
    cv = await repository.getCv();
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
