import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

class MultipleUser extends StatelessWidget {
  const MultipleUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(4, (index) => Image.asset(AppAssets.imageUserProfileMock)).toList(),
        ),
        const SizedBox.square(dimension: 5.0),
        const Text('+23', style: TextStyle(color: AppColor.secondary, fontSize: 24)),
        const Spacer(),
        const Text('may/3', style: TextStyle(color: AppColor.secondary, fontSize: 14)),
      ],
    );
  }
}
