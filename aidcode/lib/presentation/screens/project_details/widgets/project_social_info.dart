import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectSocialInfo extends StatelessWidget {
  const ProjectSocialInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              FontAwesomeIcons.github,
              color: AppColor.secondary,
            ),
            title: Text(
              "Link to Github",
              style: TextStyle(color: AppColor.secondary, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text("linkedin.com/xxxx/repo", style: TextStyle(color: AppColor.secondary, fontSize: 16)),
            trailing: Text(
              "67 views",
              style: TextStyle(color: AppColor.primary, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.linkedin,
              color: AppColor.secondary,
            ),
            title: Text(
              "Link to Linkeding",
              style: TextStyle(color: AppColor.secondary, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text("linkedin.com/xxxx/repo", style: TextStyle(color: AppColor.secondary, fontSize: 16)),
            trailing: Text(
              "63 views",
              style: TextStyle(color: AppColor.primary, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.stackOverflow,
              color: AppColor.secondary,
            ),
            title: Text(
              "Link to StackOverflow",
              style: TextStyle(color: AppColor.secondary, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text("linkedin.com/xxxx/repo", style: TextStyle(color: AppColor.secondary, fontSize: 16)),
            trailing: Text(
              "41 views",
              style: TextStyle(color: AppColor.primary, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
