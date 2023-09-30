import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

sliverAppBar(
  BuildContext context, {
  Widget? leading,
  Widget? training,
  Function()? onPressMenu,
}) {
  return SliverAppBar(
    floating: true,
    snap: true,
    expandedHeight: 100,
    flexibleSpace: SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading ?? const SizedBox.square(dimension: 20.0),
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
            child: training ??
                IconButton(
                  icon: const Icon(Icons.menu, size: 40),
                  onPressed: onPressMenu,
                ),
          ),
        ],
      ),
    )),
  );
}
