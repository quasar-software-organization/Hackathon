import 'package:aidcode/presentation/screens/volunter/widgets/profile_avatar.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_description.dart';

import 'package:aidcode/presentation/screens/volunter/widgets/profile_info.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_job.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_option_bottom.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VolunteerScreen extends StatelessWidget {
  const VolunteerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverAppBar(
            context,
            onBack: () {
              context.pop();
            },
          ),
          SliverToBoxAdapter(
            child: Center(child: ProfileAvatar(size: Size(size.width * 0.8, size.width * 0.8))),
          ),
          const SliverToBoxAdapter(
            child: ProfileInfo(),
          ),
          const SliverToBoxAdapter(
            child: ProfileJob(),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileOptionBottom(
                    title: "158",
                    subtitle: "Collected credits",
                  ),
                  ProfileOptionBottom(
                    title: "20",
                    subtitle: "Finished projects",
                  ),
                  ProfileOptionBottom(
                    title: "3",
                    subtitle: "Projects in progress",
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20),
            sliver: SliverToBoxAdapter(
              child: ProfileDescription(),
            ),
          ),
        ],
      ),
    );
  }
}
