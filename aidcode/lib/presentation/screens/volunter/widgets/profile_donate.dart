import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileDonate extends StatelessWidget {
  const ProfileDonate({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(thickness: 4, color: AppColor.secondary),
          SizedBox(
            height: 100,
            child: Center(
              child: SizedBox(
                height: 50,
                width: 200,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  color: scheme.primary,
                  child: const Text(
                    "Donate",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
