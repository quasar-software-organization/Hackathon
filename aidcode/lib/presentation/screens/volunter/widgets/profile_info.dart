import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.name,
    required this.skills,
    required this.age,
  });

  final String age;
  final String name;
  final String skills;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('$name, $age',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: AppColor.secondary)),
          Text(
            skills,
            style: const TextStyle(fontSize: 20, color: AppColor.secondary),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
