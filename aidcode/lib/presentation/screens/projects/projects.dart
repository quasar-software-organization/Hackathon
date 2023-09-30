import 'package:aidcode/domain/entities/proyect_entity.dart';
import 'package:aidcode/presentation/screens/about/about_screen.dart';
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
          sliverAppBar(context,
              onBack: () {
                context.pop();
              },
              leading: InkWell(
                onTap: () {
                  context.goNamed(MyRoutes.volunteer.name);
                },
                child: Image.asset(AppAssets.imageUserProfileMock),
              ),
              onPressInfo: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUsScreen()));
              }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ProjectCard(proyectEntity: mockProjects[index]);
              },
              childCount:
                  mockProjects.length, // Número de elementos en la lista
            ),
          ),
        ],
      ),
    );
  }
}
