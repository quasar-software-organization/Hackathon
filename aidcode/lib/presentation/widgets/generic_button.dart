import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  const GenericButton({
    super.key,
    required this.widget,
    required this.onPressed,
    this.decoration,
    this.width,
  });

  final Widget widget;
  final VoidCallback onPressed;
  final BoxDecoration? decoration;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: width,
        decoration: decoration ??
            BoxDecoration(
                color: AppColor.secondary,
                borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: widget,
        ),
      ),
    );
  }
}
