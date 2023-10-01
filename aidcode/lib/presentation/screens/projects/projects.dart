import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/bloc/project_bloc/project_bloc.dart';
import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
import 'package:aidcode/presentation/widgets/loading_widget.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:aidcode/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/volunteer_bloc/volunteer_bloc.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, ProjectState>(
      builder: (context, state) {
        return BlocBuilder<VolunteerBloc, VolunteerState>(
          builder: (context, volunteerState) {
            final volunteer = volunteerState.volunteer;

            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  sliverAppBar(
                    context,
                    onBack: () {
                      context.pop();
                    },
                    onPressInfo: () {
                      context.pushNamed(MyRoutes.aboutUs.name);
                    },
                    leading: InkWell(
                      onTap: () {
                        context.goNamed(MyRoutes.volunteer.name);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.primary, width: 4),
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(volunteer?.picture ??
                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                  state.hasInitialized
                      ? SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return ProjectCard(
                                  project: state.projects[index]);
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
      },
    );
  }
}
