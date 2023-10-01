import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

class ProjectDetailImage extends StatelessWidget {
  const ProjectDetailImage({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          project.nonProfitId == '3yxz1XgeNc6yRmeGaukC'
              ? AppAssets.americanCancerSociety
              : AppAssets.habitatHumanity,
          fit: BoxFit.cover,
        ),
        const SizedBox.square(dimension: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            project.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColor.secondary,
            ),
          ),
        ),
        const SizedBox.square(dimension: 10),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 4, color: AppColor.secondary),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            project.tag,
            style: const TextStyle(color: AppColor.secondary),
          ),
        )
      ],
    );
  }
}
