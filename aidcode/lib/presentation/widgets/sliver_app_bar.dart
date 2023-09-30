import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

sliverAppBar(
  BuildContext context, {
  Widget? leading,
  Widget? training,
  Function()? onPressMenu,
}) {
  final size = MediaQuery.of(context).size;
  final canPop = Navigator.of(context).canPop();
  return SliverAppBar(
    leading: SizedBox(),
    floating: true,
    snap: true,
    expandedHeight: 100,
    flexibleSpace: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.28,
              child: leading == null && canPop
                  ? IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 40,
                      ),
                    )
                  : leading,
            ),
            Expanded(
              child: Container(
                height: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.logoAidcodePng,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.28,
              child: training ??
                  IconButton(
                    icon: const Icon(Icons.menu, size: 40),
                    onPressed: onPressMenu,
                  ),
            ),
          ],
        ),
      ),
    ),
  );
}
