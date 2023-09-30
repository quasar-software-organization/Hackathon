import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

class ProjectDetailImage extends StatelessWidget {
  const ProjectDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.wwfLogo),
        const Text("WWF", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 4, color: AppColor.secondary),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text("WebApp", style: TextStyle(color: AppColor.secondary)),
        )
      ],
    );
  }
}
