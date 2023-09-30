import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class LinkedinDatasource {
  Future<void> createPost(
      {required String title,
      required String description,
      required String nonProfitName});
}

@Injectable(as: LinkedinDatasource)
class LinkedinDatasourceImpl implements LinkedinDatasource {
  final Dio dio;

  LinkedinDatasourceImpl({required this.dio});

  @override
  Future<void> createPost(
      {required String title,
      required String description,
      required String nonProfitName}) async {
    try {
      await dio.post('/v2/ugcPosts', data: {
        "author": "urn:li:person:98947521",
        "lifecycleState": "PUBLISHED",
        "specificContent": {
          "com.linkedin.ugc.ShareContent": {
            "shareCommentary": {"text": title},
            "shareMediaCategory": "ARTICLE",
            "media": [
              {
                "status": "READY",
                "description": {
                  "text":
                      description
                },
                "originalUrl": "https://blog.linkedin.com/",
                "title": {"text": "Official LinkedIn Blog"}
              }
            ]
          }
        },
        "visibility": {"com.linkedin.ugc.MemberNetworkVisibility": "PUBLIC"}
      });
    } catch (e) {
      throw Exception('Error posting in Linkedin');
    }
  }
}
