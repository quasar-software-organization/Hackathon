import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileJob extends StatelessWidget {
  const ProfileJob({super.key, required this.availability});

  final String availability;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 80,
      child: Center(
        child: SizedBox(
          height: 60,
          width: size.width * 0.7,
          child: FittedBox(
            child: Text(
              'Availability: $availability',
              style: const TextStyle(
                color: AppColor.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
