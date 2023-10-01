import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  FirebaseFirestore get instance => FirebaseFirestore.instance;

  @Named("LinkedinApiBaseUrl")
  String get linkedinBaseUrl => 'https://api.linkedin.com';

  @Named("GithubApiBaseUrl")
  String get githubBaseUrl => 'https://api.github.com';

  @lazySingleton
  @Named("LinkedinDio")
  Dio linkedinDioProvider(@Named('LinkedinApiBaseUrl') String url) {
    final dio = Dio(
      BaseOptions(
        baseUrl: url,
        headers: {
          'Authorization':
              'Bearer ${const String.fromEnvironment('LINKEDIN_AUTHORIZATION')}',
          'Content-Type': 'application/json',
          'X-RestLi-Protocol-Version': '2.0.0',
        },
      ),
    );

    return dio;
  }

  @lazySingleton
  @Named("GithubDio")
  Dio githubDioProvider(@Named('GithubApiBaseUrl') String url) {
    final dio = Dio(
      BaseOptions(
        baseUrl: url,
        headers: {
          'Authorization':
              const String.fromEnvironment('GITHUB_AUTHORIZATION'),
          'Content-Type': 'application/json',
        },
      ),
    );

    return dio;
  }
}
