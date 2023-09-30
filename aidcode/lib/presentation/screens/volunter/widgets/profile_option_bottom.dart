import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileOptionBottom extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Function()? onTap;

  const ProfileOptionBottom({super.key, required this.title, this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    const textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: AppColor.secondary);
    return LayoutBuilder(builder: (context, constrains) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  color: scheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text(title, style: textStyle)),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  subtitle ?? "",
                  style: textStyle,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
