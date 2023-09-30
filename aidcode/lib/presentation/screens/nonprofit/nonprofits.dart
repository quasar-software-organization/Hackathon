import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/presentation/bloc/non_profit_bloc/non_profit_bloc.dart';
import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
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

      return Scaffold(
        body: np == null ? _loading() : _body(np, state.projects, context),
      );
    });
  }

  Widget _loading() {
    return const CircularProgressIndicator();
  }

  Widget _body(NonProfit np, List<Project> projects, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CustomScrollView(
        slivers: [
          sliverAppBar(
            context,
            onBack: () {
              context.pop();
            },
            onPressInfo: () {},
          ),
          SliverToBoxAdapter(
            child: Center(
                child:
                    Text(np.name, style: const TextStyle(color: AppColor.secondary, fontSize: 24, fontWeight: FontWeight.bold))),
          ),
          const SliverToBoxAdapter(child: SizedBox.square(dimension: 20)),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              const Text('Description', style: TextStyle(color: AppColor.secondary, fontSize: 20, fontWeight: FontWeight.bold)),
              Text(np.missionAndVision,
                  style: const TextStyle(
                    color: AppColor.secondary,
                    fontSize: 16,
                  )),
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
