import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text("We need a team to develop a webapp to control animal species in danger of extinction",
      style: TextStyle(fontSize: 20, color: AppColor.secondary),),
    );
  }
}
