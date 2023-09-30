import 'package:aidcode/presentation/screens/volunter/widgets/profile_avatar.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_description.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_donate.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_info.dart';
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
            child: Center(
                child: ProfileAvatar(
                    size: Size(size.width * 0.8, size.width * 0.8))),
          ),
          const SliverToBoxAdapter(
            child: ProfileInfo(),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileOptionBottom(
                    title: "UI",
                    subtitle: "Designer",
                  ),
                  ProfileOptionBottom(
                    title: "UI",
                    subtitle: "Designer",
                  ),
                  ProfileOptionBottom(
                    title: "UI",
                    subtitle: "Designer",
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
          const SliverToBoxAdapter(
            child: ProfileDonate(),
          ),
        ],
      ),
    );
  }
}
