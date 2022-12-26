import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/constants.dart';

import '../models/cv_model.dart';

class CvProvider{
  CollectionReference<Cv> cvRef =
  FirebaseFirestore.instance.collection(FirebaseConstants.cv).withConverter<Cv>(
    fromFirestore: (snapshot, _) => Cv.fromJson(snapshot.data()!),
    toFirestore: (FbUser, _) => FbUser.toJson(),
  );

  @override
  void onInit() {
  }

  Future<Cv> getCv() async {
    DocumentSnapshot<Cv> documentSnapshot = await cvRef
        .doc(FirebaseConstants.cv)
        .get();

    return documentSnapshot.data()!;
  }

}
