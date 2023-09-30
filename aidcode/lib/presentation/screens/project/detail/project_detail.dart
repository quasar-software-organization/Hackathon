import 'package:aidcode/presentation/screens/project/detail/widgets/project_image.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({super.key});

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
              padding: EdgeInsets.symmetric(horizontal: 8),
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
