import 'package:flutter/material.dart';

class ProfileOptionBottom extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Function()? onTap;

  const ProfileOptionBottom({super.key, required this.title, this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: textStyle),
            Text(subtitle ?? "", style: textStyle),
          ],
        ),
      ),
    );
  }
}
