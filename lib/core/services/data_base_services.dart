abstract class DataBaseServices {
  Future<void> addUserData(
    String path,
    Map<String, dynamic> data,
    String? documentId,
  );
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  });
  Future<bool> checkIfDocumentExists({
    required String path,
    required String documentId,
  });
}
