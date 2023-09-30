import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aidcode/resources/resources.dart';

void main() {
  test('app_assets assets test', () {
    expect(File(AppAssets.logoAidcodePng).existsSync(), isTrue);
    expect(File(AppAssets.logoAidcodeSvg).existsSync(), isTrue);
  });
}
