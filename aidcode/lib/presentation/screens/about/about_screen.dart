import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/screens/about/widgets/about_us_description.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        leading: const SizedBox(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: AppColor.secondary,
                size: 30,
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              AboutUsDescription(),
              SizedBox.square(dimension: 35.0),
              LinksSection()
            ],
          ),
        ),
      ),
    );
  }
}

class LinksSection extends StatelessWidget {
  const LinksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Links',
            style: TextStyle(
              color: AppColor.primary,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox.square(dimension: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  final Uri url =
                      Uri.parse('https://www.linkedin.com/company/aidcode/');

                  launchUrl(url);
                },
                child: Image.asset(AppAssets.linkedin),
              ),
              const SizedBox.square(dimension: 25.0),
              InkWell(
                onTap: () {},
                child: Image.asset(AppAssets.facebook),
              ),
              const SizedBox.square(dimension: 25.0),
              InkWell(
                onTap: () {},
                child: Image.asset(AppAssets.instagram),
              ),
              const SizedBox.square(dimension: 25.0),
            ],
          ),
        ],
      ),
    );
  }

  Widget linkValue({required String image, required String link}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox.square(dimension: 10.0),
          Text(link, style: const TextStyle(color: AppColor.link)),
        ],
      ),
    );
  }
}
