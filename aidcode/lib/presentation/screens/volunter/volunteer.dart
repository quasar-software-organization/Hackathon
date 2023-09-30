import 'package:aidcode/presentation/screens/volunter/widgets/profile_avatar.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_description.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_donate.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_info.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_option_bottom.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';

class VolunteerScreen extends StatelessWidget {
  const VolunteerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverAppBar(),
          SliverToBoxAdapter(
            child: Center(child: ProfileAvatar(size: Size(size.width * 0.8, size.width * 0.8))),
          ),
          SliverToBoxAdapter(
            child: ProfileInfo(),
          ),
          SliverPadding(
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
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20),
            sliver: SliverToBoxAdapter(
              child: ProfileDescription(),
            ),
          ),
          SliverToBoxAdapter(
            child: ProfileDonate(),
          )
        ],
      ),
    );
  }
}
