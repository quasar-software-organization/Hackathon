import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final Size size;

  const ProfileAvatar({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.all(size.width * 0.05),
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(color: scheme.primary, borderRadius: BorderRadius.circular(8)),
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: scheme.background,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
