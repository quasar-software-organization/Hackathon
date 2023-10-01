import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        description,
        style: const TextStyle(fontSize: 20, color: AppColor.secondary),
      ),
    );
  }
}
