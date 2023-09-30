abstract class LinkedinDatasource {
  Future<void> createPost(
      {required String title,
      required String description,
      required String nonProfitName});
}

class LinkedinDatasourceImpl implements LinkedinDatasource {
  @override
  Future<void> createPost(
      {required String title,
      required String description,
      required String nonProfitName}) {
    // TODO: implement createPost
    throw UnimplementedError();
  }
}
