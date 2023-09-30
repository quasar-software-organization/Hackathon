import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/presentation/bloc/non_profit_bloc/non_profit_bloc.dart';
import 'package:aidcode/presentation/screens/about/about_screen.dart';

import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
import 'package:aidcode/presentation/widgets/generic_button.dart';
import 'package:aidcode/presentation/widgets/loading_widget.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../data/model/non_profit.dart';

class NonProfitsScreen extends StatelessWidget {
  const NonProfitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NonProfitBloc, NonProfitState>(builder: (context, state) {
      NonProfit? np = state.nonProfit;
      final size = MediaQuery.of(context).size;
      return Scaffold(
        body: np == null || !state.hasInitialized ? const LoadingWidget() : _body(np, state.projects, context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: double.maxFinite,
          height: 100,
          child: Column(
            children: [
              const Divider(color: AppColor.primary, thickness: 4),
              Expanded(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                    height: 60,
                    child: GenericButton(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColor.secondary),
                      onPressed: () {},
                      widget: const Center(
                        child: Text(
                          "Create Project",
                          style: TextStyle(color: AppColor.primary, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _body(NonProfit np, List<Project> projects, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 100),
      child: CustomScrollView(
        slivers: [
          sliverAppBar(context, onBack: () {
            context.pop();
          }, onPressInfo: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsScreen()));
          }),
          SliverToBoxAdapter(
            child: Center(
                child:
                    Text(np.name, style: const TextStyle(color: AppColor.secondary, fontSize: 24, fontWeight: FontWeight.bold))),
          ),
          const SliverToBoxAdapter(child: SizedBox.square(dimension: 20)),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              const Text('Description', style: TextStyle(color: AppColor.secondary, fontSize: 20, fontWeight: FontWeight.bold)),
              Text(
                np.missionAndVission,
                style: const TextStyle(
                  color: AppColor.secondary,
                  fontSize: 16,
                ),
              ),
              const SizedBox.square(dimension: 50)
            ]),
          ),
          const SliverToBoxAdapter(
            child: Text('Projects', style: TextStyle(color: AppColor.secondary, fontSize: 20, fontWeight: FontWeight.bold)),
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
