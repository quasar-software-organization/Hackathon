import 'package:aidcode/presentation/widgets/generic_button.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

class ProjectDetailImage extends StatelessWidget {
  const ProjectDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(AppAssets.projectLogo),
        Text(
          "WWF",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
