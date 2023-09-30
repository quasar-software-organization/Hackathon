import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/resources/resources.dart';

import 'package:aidcode/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => context.goNamed(MyRoutes.projectDetail.name, pathParameters: {"id": project.id ?? "0"}),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.secondary, width: 4),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage(AppAssets.americanCancerSociety),
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Text(project.name,
                              style: const TextStyle(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.clip),
                        ),
                        _detailSection(title: 'Type', subtitle: project.description),
                        _detailSection(title: 'Need', subtitle: project.tag),
                      ],
                    ),
                  ],
                ),
                // const SizedBox.square(dimension: 10.0),
                // const MultipleUser()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _detailSection({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title:',
          style: const TextStyle(color: AppColor.primary, fontSize: 14),
        ),
        Text(
          subtitle,
          style: const TextStyle(color: AppColor.secondary, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
