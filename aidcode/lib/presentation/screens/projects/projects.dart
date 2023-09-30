import 'package:aidcode/presentation/bloc/project_bloc/project_bloc.dart';
import 'package:aidcode/presentation/screens/about/about_screen.dart';
import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
import 'package:aidcode/presentation/widgets/loading_widget.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:aidcode/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, ProjectState>(
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              sliverAppBar(
                context,
                onBack: () {
                  context.pop();
                },
                onPressInfo: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutUsScreen()));
                },
                leading: InkWell(
                  onTap: () {
                    context.goNamed(MyRoutes.volunteer.name);
                  },
                  child: Image.asset(AppAssets.imageUserProfileMock),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              state.hasInitialized
                  ? SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return ProjectCard(project: state.projects[index]);
                        },
                        childCount: state.projects.length,
                      ),
                    )
                  : const SliverFillRemaining(
                      child: LoadingWidget(),
                    ),
            ],
          ),
        );
      },
    );
  }
}
