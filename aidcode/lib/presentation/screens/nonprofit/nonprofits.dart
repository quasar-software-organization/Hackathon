import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NonProfitsScreen extends StatelessWidget {
  const NonProfitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomScrollView(
          slivers: [
            sliverAppBar(
              context,
              onBack: () {
                context.pop();
              },
              onPressMenu: () {},
            ),
            const SliverToBoxAdapter(
              child: Center(
                  child: Text('WWF',
                      style: TextStyle(
                          color: AppColor.secondary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold))),
            ),
            const SliverToBoxAdapter(child: SizedBox.square(dimension: 20)),
            const SliverList(
              delegate: SliverChildListDelegate.fixed([
                Text('Description',
                    style: TextStyle(
                        color: AppColor.secondary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text(
                    'WWF is one of the largest international nature conservation organizations. It was created on April 29, 1961. The headquarters of WWF International is located in Gland, Switzerland. WWF has offices in more than 80 countries around the world.',
                    style: TextStyle(
                      color: AppColor.secondary,
                      fontSize: 16,
                    )),
                SizedBox.square(dimension: 50)
              ] // Número de elementos en la lista
                  ),
            ),
            const SliverToBoxAdapter(
              child: Text('Projects',
                  style: TextStyle(
                      color: AppColor.secondary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
