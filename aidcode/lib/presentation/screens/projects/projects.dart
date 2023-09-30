import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:aidcode/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverAppBar(
            context,
            onBack: () {
              context.pop();
            },
            leading: InkWell(
              onTap: () {
                context.goNamed(MyRoutes.volunteer.name);
              },
              child: Image.asset(AppAssets.imageUserProfileMock),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const ProjectCard();
              },
              childCount: 20, // Número de elementos en la lista
            ),
          ),
        ],
      ),
    );
  }
}