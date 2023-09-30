import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/widgets/generic_button.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:aidcode/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCB527),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.aidCodeWelcome),
            const SizedBox.square(dimension: 30),
            const Text('Welcome',
                style: TextStyle(
                    color: AppColor.secondary,
                    fontWeight: FontWeight.w700,
                    fontSize: 30)),
            const Text('select your role',
                style: TextStyle(
                    color: AppColor.secondary,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            const SizedBox.square(dimension: 20),
            GenericButton(
              width: 200,
              widget: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Volunteer',
                  style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onPressed: () {
                context.goNamed(MyRoutes.projects.name);
              },
            ),
            const SizedBox.square(dimension: 10),
            GenericButton(
              width: 200,
              widget: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Non-Profit',
                  style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onPressed: () {
                context.goNamed(MyRoutes.nonprofits.name);
              },
            )
          ],
        ),
      ),
    );
  }
}
