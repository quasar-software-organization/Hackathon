import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../widgets/sliver_app_bar.dart';
import 'widgets/project_image.dart';

class ProjectDetails extends StatelessWidget {
  final int id;

  const ProjectDetails({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: CustomScrollView(
          slivers: [
            sliverAppBar(
              context,
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(AppAssets.projectLogo),
              ),
            ),
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
