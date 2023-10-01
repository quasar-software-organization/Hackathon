import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/presentation/bloc/non_profit_bloc/non_profit_bloc.dart';

import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
import 'package:aidcode/presentation/widgets/generic_button.dart';
import 'package:aidcode/presentation/widgets/loading_widget.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:aidcode/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../data/model/non_profit.dart';
import '../../bloc/project_bloc/project_bloc.dart';

class NonProfitsScreen extends StatelessWidget {
  const NonProfitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NonProfitBloc, NonProfitState>(
        builder: (context, state) {
      NonProfit? np = state.nonProfit;
      final size = MediaQuery.of(context).size;
      return BlocListener<ProjectBloc, ProjectState>(
        listener: (context, state) {
          if (state.status == ProjectStatus.loaded) {
            context.read<NonProfitBloc>().add(
                NonProfitEvent.getNonProfitsProjects(nonProfitId: np!.id!));
          }
        },
        child: Scaffold(
          body: np == null || !state.hasInitialized
              ? const LoadingWidget()
              : _body(np, state.projects, context),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            width: double.maxFinite,
            color: AppColor.scaffold,
            height: 120,
            child: Column(
              children: [
                const Divider(
                    color: AppColor.primary, thickness: 4, height: 0.0),
                Expanded(
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.2),
                      height: 60,
                      child: GenericButton(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.secondary,
                        ),
                        onPressed: () {
                          context.goNamed(MyRoutes.projectForm.name, extra: np);
                        },
                        widget: const Center(
                          child: Text(
                            "Create Project",
                            style: TextStyle(
                                color: AppColor.primary,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _body(NonProfit np, List<Project> projects, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 120),
      child: CustomScrollView(
        slivers: [
          sliverAppBar(
            context,
            onBack: () {
              context.pop();
            },
            onPressInfo: () {
              context.pushNamed(MyRoutes.aboutUs.name);
            },
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
          SliverToBoxAdapter(
            child: Center(
                child: Text(np.name,
                    style: const TextStyle(
                        color: AppColor.secondary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold))),
          ),
          const SliverToBoxAdapter(child: SizedBox.square(dimension: 20)),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Description',
                  style: TextStyle(
                      color: AppColor.secondary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  np.missionAndVission,
                  style: const TextStyle(
                    color: AppColor.secondary,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox.square(dimension: 20)
            ]),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Projects',
                style: TextStyle(
                    color: AppColor.secondary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ProjectCard(
                  project: projects[index],
                );
              },
              childCount: projects.length,
            ),
          ),
        ],
      ),
    );
  }
}
