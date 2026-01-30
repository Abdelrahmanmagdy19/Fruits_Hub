import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furits_ecommerce_app/core/services/data_base_services.dart';

class FirestoreServices implements DataBaseServices {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addUserData(
    String path,
    Map<String, dynamic> data,
    String? documentId,
  ) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  }) async {
    final data = await firestore.collection(path).doc(documentId).get();
    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIfDocumentExists({
    required String path,
    required String documentId,
  }) async {
    final data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
