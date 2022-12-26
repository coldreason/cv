import 'package:cv/app/data/models/cv_model.dart';
import 'package:cv/app/data/providers/cv_provider.dart';

class CvRepository {
  final CvProvider cvProvider;

  CvRepository({
    required this.cvProvider,
  });

  Future<Cv> getCv() => cvProvider.getCv();

}
