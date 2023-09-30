import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/screens/projects/widgets/multiple_user.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:aidcode/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      required this.name,
      required this.type,
      required this.status,
      required this.date,
      required this.projectId});

  final String projectId;
  final String name;
  final String type;
  final String status;
  final String date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => context
          .goNamed(MyRoutes.projectDetail.name, pathParameters: {"id": projectId}),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          AppAssets.projectLogo,
                          fit: BoxFit.cover,
                          height: 150,
                        )),
                    const SizedBox.square(dimension: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child:  Text(name,
                              style: const TextStyle(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                              maxLines:
                                  2, // Establece el número máximo de líneas en 2
                              overflow: TextOverflow
                                  .clip // Usa elipsis (...) si el texto se desborda
                              ),
                        ),
                        _detailSection(title: 'Type', subtitle: type),
                        _detailSection(title: 'Status', subtitle: status),
                        _detailSection(title: 'Date', subtitle: date),
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
          style: const TextStyle(
              color: AppColor.secondary,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
