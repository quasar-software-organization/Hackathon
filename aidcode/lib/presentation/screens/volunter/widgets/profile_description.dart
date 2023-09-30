import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichReadMoreText.fromString(
        text: description,
        textStyle: const TextStyle(color: AppColor.secondary, fontSize: 16),
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
    );
  }
}
