import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/screens/projects/widgets/multiple_user.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:aidcode/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => context.goNamed(MyRoutes.projectDetail.name, pathParameters: {"id": "1"}),
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
                        const Text('WW', style: TextStyle(color: AppColor.secondary, fontWeight: FontWeight.bold, fontSize: 24)),
                        Container(
                            decoration: BoxDecoration(color: AppColor.secondary, borderRadius: BorderRadius.circular(10.0)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                              child: Text(
                                'environment',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        SizedBox(
                          width: size.width - 225,
                          child: const Row(
                            children: [
                              Expanded(
                                child: Text('I need an engineer to develop an app',
                                    style: TextStyle(color: AppColor.secondary), overflow: TextOverflow.clip, maxLines: 2),
                              ),
                            ],
                          ),
                        ),
                        const Text('7/21/2023', style: TextStyle(color: AppColor.secondary, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox.square(dimension: 10.0),
                const MultipleUser()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
