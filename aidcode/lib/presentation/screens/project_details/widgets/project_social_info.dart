import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSocialInfo extends StatelessWidget {
  const ProjectSocialInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.github,
              color: AppColor.secondary,
            ),
            title: const Text(
              "Link to Github",
              style: TextStyle(
                  color: AppColor.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            subtitle: const Text(
                "https://github.com/dibusan/hfh-educational-outreach",
                maxLines: 2,
                style: TextStyle(color: AppColor.secondary, fontSize: 16)),
            trailing: const Text(
              "67 views",
              style: TextStyle(
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            onTap: () {
              final Uri url = Uri.parse(
                  'https://github.com/dibusan/hfh-educational-outreach');

              launchUrl(url);
            },
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.linkedin,
              color: AppColor.secondary,
            ),
            title: const Text(
              "Link to Linkedin",
              style: TextStyle(
                  color: AppColor.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            subtitle: const Text(
                "https://www.linkedin.com/posts/aidcode_aidcode-activity-7114200579064639490-Y_yI?utm_source=share&utm_medium=member_desktop",
                maxLines: 2,
                style: TextStyle(color: AppColor.secondary, fontSize: 16)),
            trailing: const Text(
              "63 views",
              style: TextStyle(
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            onTap: () {
              final Uri url = Uri.parse(
                  'https://www.linkedin.com/posts/aidcode_aidcode-activity-7114200579064639490-Y_yI?utm_source=share&utm_medium=member_desktop');

              launchUrl(url);
            },
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.stackOverflow,
              color: AppColor.secondary,
            ),
            title: const Text(
              "Link to StackOverflow",
              style: TextStyle(
                  color: AppColor.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            subtitle: const Text("https://stackoverflow.com/questions",
                maxLines: 2,
                style: TextStyle(color: AppColor.secondary, fontSize: 16)),
            trailing: const Text(
              "41 views",
              style: TextStyle(
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            onTap: () {
              final Uri url = Uri.parse('https://stackoverflow.com/questions');

              launchUrl(url);
            },
          ),
        ],
      ),
    );
  }
}
