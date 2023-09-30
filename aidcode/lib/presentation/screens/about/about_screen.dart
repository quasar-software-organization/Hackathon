import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/screens/about/widgets/about_us_description.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,
          leading: SizedBox(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset(AppAssets.imageUserProfileMock)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: const Icon(Icons.close,
                    color: AppColor.secondary, size: 26),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ]),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              AboutUsDescription(),
              SizedBox.square(dimension: 20.0),
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
          const Text('Links',
              style: TextStyle(
                  color: AppColor.primary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          linkValue(
              image: AppAssets.linkedin, link: 'linkedin.com/aidcode/repo'),
          linkValue(
              image: AppAssets.facebook, link: 'facebook.com/aidcode/repo'),
          linkValue(
              image: AppAssets.instagram, link: 'instagram.com/aidcode/repo'),
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
