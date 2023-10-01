import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/screens/project_details/widgets/project_description.dart';
import 'package:aidcode/presentation/screens/project_details/widgets/project_social_info.dart';
import 'package:aidcode/presentation/screens/projects/widgets/multiple_user.dart';
import 'package:aidcode/presentation/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../resources/resources.dart';
import '../../widgets/sliver_app_bar.dart';
import 'widgets/project_image.dart';

class ProjectDetails extends StatelessWidget {
  final int id;

  const ProjectDetails({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: CustomScrollView(
          slivers: [
            sliverAppBar(
              context,
              training: const SizedBox.shrink(),
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(AppAssets.wwfLogo),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              sliver: SliverFillRemaining(
                child: Card(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 40),
                                child: ProjectDetailImage(),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(Icons.close, size: 40),
                              ),
                            )
                          ],
                        ),
                        const ProjectDescription(),
                        const ProjectSocialInfo(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: GenericButton(
                            width: size.width * 0.6,
                            widget: const Center(
                              child: Text(
                                "Contribute",
                                style: TextStyle(
                                    color: AppColor.primary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                useRootNavigator: true,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Contribute'),
                                    content: const Text(
                                      'You have been added to the Opensource Git repo. Check your email for an invitation',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          context.pop();
                                          context.pop();
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: MultipleUser(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
