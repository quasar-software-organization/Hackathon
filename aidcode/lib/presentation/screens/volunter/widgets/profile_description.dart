import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichReadMoreText.fromString(
              text: "I am a designer who is passionate about technology and the web world." * 20,
              settings: LengthModeSettings(
                trimLength: 200,
                trimCollapsedText: ' show more',
                trimExpandedText: ' show less',
                onPressReadMore: () {
                  /// specific method to be called on press to show more
                },
                onPressReadLess: () {
                  /// specific method to be called on press to show less
                },
                lessStyle: TextStyle(color: scheme.primary),
                moreStyle: TextStyle(color: scheme.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
