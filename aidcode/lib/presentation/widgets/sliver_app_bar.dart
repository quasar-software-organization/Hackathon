import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

sliverAppBar(
  BuildContext context, {
  Widget? leading,
  Widget? training,
  Function()? onPressMenu,
}) {
  final size = MediaQuery.of(context).size;
  return SliverAppBar(
    floating: true,
    snap: true,
    expandedHeight: 100,
    flexibleSpace: SafeArea(
        child: Row(
      children: [
        SizedBox(width: size.width * 0.3, child: leading),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.logoAidcodePng),
              ),
            ),
          ),
        ),
        SizedBox(
          width: size.width * 0.3,
          child: training ??
              IconButton(
                icon: const Icon(Icons.menu, size: 40),
                onPressed: onPressMenu,
              ),
        ),
      ],
    )),
  );
}
