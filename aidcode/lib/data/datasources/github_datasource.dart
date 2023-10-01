import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class GithubDatasource {
  Future<void> createProject({
    required String name,
    required String description,
  });
}

@Injectable(as: GithubDatasource)
class GithubDatasourceImpl implements GithubDatasource {
  final Dio dio;

  GithubDatasourceImpl({@Named('GithubDio') required this.dio});

  @override
  Future<void> createProject({
    required String name,
    required String description,
  }) async {
    try {
      // Creating the repo
      await dio.post('/user/repos', data: {
        "name": name,
        "license_template": "mit",
        "description": description,
        "homepage": "https://github.com",
        "private": false,
        "has_issues": true,
        "has_projects": true,
        "has_wiki": true
      });
      // Creating the README.md file.
      final encondedContent = base64.encode(utf8.encode('# $name'));
      await dio.post('/repos/daniarmas/$name/contents/README.md', data: {
        "message": "first commit",
        "committer": {"name": "My name", "email": "my email"},
        "content": encondedContent
      });
    } catch (e) {
      throw Exception('Error creating github project.');
    }
  }
}
