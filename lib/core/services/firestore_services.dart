import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furits_ecommerce_app/core/services/data_base_services.dart';

class FirestoreServices implements DataBaseServices {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addUserData(String path, Map<String, dynamic> data) async {
    await firestore.collection(path).add(data);
  }
}
