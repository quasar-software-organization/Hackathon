import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final Size size;
  final String? picture;

  const ProfileAvatar({super.key, required this.size, required this.picture});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.all(size.width * 0.05),
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          color: scheme.primary, borderRadius: BorderRadius.circular(8)),
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: scheme.background,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: NetworkImage(picture ??
                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
