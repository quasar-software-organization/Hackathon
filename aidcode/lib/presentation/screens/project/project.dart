import 'package:aidcode/presentation/screens/project/widgets/project_item.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverAppBar(
            context,
            onPressMenu: () {},
            leading: Image.asset(AppAssets.imageUserProfileMock),
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
