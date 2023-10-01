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
      onTap: () => context.pushNamed(MyRoutes.projectDetail.name,
          pathParameters: {"id": project.nonProfitId}),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            height: 180,
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: double.maxFinite,
                  width: 150,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.secondary, width: 4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    project.nonProfitId == '3yxz1XgeNc6yRmeGaukC'
                        ? AppAssets.americanCancerSociety
                        : AppAssets.habitatHumanity,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox.square(dimension: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          project.name,
                          style: const TextStyle(
                            color: AppColor.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      _detailSection(
                          title: 'Type', subtitle: project.description),
                      _detailSection(title: 'Need', subtitle: project.tag),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _detailSection({required String title, required String subtitle}) {
    return Flexible(
      child: ListTile(
        minVerticalPadding: 0.0,
        contentPadding: EdgeInsets.zero,
        title: Text('$title:'),
        titleTextStyle: const TextStyle(color: AppColor.primary, fontSize: 14),
        subtitle: Text(
          subtitle,
          maxLines: 2,
          style: const TextStyle(
            color: AppColor.secondary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
