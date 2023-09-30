import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileJob extends StatelessWidget {
  const ProfileJob({super.key, required this.availability});

  final String availability;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 100,
      child: Center(
        child: SizedBox(
          height: 60,
          width: size.width * 0.7,
          child: MaterialButton(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            color: scheme.primary,
            child: FittedBox(
              child: Text(
                'Availability: $availability',
                style: const TextStyle(fontSize: 24, color: AppColor.secondary),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
