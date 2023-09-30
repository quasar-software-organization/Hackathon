import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aidcode/resources/resources.dart';

void main() {
  test('app_assets assets test', () {
    expect(File(AppAssets.aidCodeWelcome).existsSync(), isTrue);
    expect(File(AppAssets.imageUserProfileMock).existsSync(), isTrue);
    expect(File(AppAssets.logoAidcodePng).existsSync(), isTrue);
    expect(File(AppAssets.projectLogo).existsSync(), isTrue);
    expect(File(AppAssets.logoAidcodeSvg).existsSync(), isTrue);
  });
}
