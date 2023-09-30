import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AboutUsDescription extends StatelessWidget {
  const AboutUsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox.square(dimension: 10.0),
        const Align(
            alignment: Alignment.center,
            child: Text('About Us',
                style: TextStyle(
                    color: AppColor.secondary,
                    fontSize: 24,
                    fontWeight: FontWeight.w600))),
        const SizedBox.square(dimension: 10),
        _aboutUsDescriptionText(),
        const SizedBox.square(dimension: 10.0),
        _aboutUsDescriptionText(),
      ],
    );
  }

  RichText _aboutUsDescriptionText() {
    return RichText(
        text: const TextSpan(
            style: TextStyle(
              color: AppColor.secondary,
            ),
            children: <TextSpan>[
          TextSpan(
            text: 'aidcode',
            style: TextStyle(
                color: AppColor.secondary, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text:
                ''' is an innovative app that seeks to help NGOs in the United States of America and around the world.
                  \n It is developed by cuasar software, ''',
          ),
          TextSpan(
            text: 'cuasar software, ',
            style: TextStyle(
                color: AppColor.secondary, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text:
                'a company formed by a group of talented young people motivated to help the well-being of people in the digital area.',
          ),
        ]));
  }
}
