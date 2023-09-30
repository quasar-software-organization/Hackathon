import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aidcode/resources/resources.dart';

void main() {
  test('app_assets assets test', () {
    expect(File(AppAssets.aidCodeWelcome).existsSync(), isTrue);
    expect(File(AppAssets.aidcodeSplashPng).existsSync(), isTrue);
    expect(File(AppAssets.americanCancer).existsSync(), isTrue);
    expect(File(AppAssets.americanCancerSociety).existsSync(), isTrue);
    expect(File(AppAssets.americanCancerSocietyIcon).existsSync(), isTrue);
    expect(File(AppAssets.habitadDenver).existsSync(), isTrue);
    expect(File(AppAssets.habitadRestore).existsSync(), isTrue);
    expect(File(AppAssets.habitatHumanity).existsSync(), isTrue);
    expect(File(AppAssets.imageUserProfileBig).existsSync(), isTrue);
    expect(File(AppAssets.imageUserProfileMock).existsSync(), isTrue);
    expect(File(AppAssets.logoAidcodePng).existsSync(), isTrue);
    expect(File(AppAssets.miniLogo).existsSync(), isTrue);
    expect(File(AppAssets.wwfLogo).existsSync(), isTrue);
    expect(File(AppAssets.aidcodeSplashSvg).existsSync(), isTrue);
    expect(File(AppAssets.logoAidcodeSvg).existsSync(), isTrue);
    expect(File(AppAssets.splashSvg).existsSync(), isTrue);
  });
}
