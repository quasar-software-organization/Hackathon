import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/resources/resources.dart';
import 'package:flutter/material.dart';

appBar(
  BuildContext context, {
  bool automaticallyImplyLeading = true,
  Widget? leading,
  VoidCallback? onPressInfo,
  VoidCallback? onBack,
  Widget? title,
  List<Widget>? actions,
}) {
  final size = MediaQuery.of(context).size;
  final canPop = Navigator.of(context).canPop();

  return AppBar(
    automaticallyImplyLeading: automaticallyImplyLeading,
    toolbarHeight: 65.0,
    centerTitle: true,
    leading: Container(
      padding: const EdgeInsets.only(left: 16),
      width: size.width * 0.15,
      child: leading == null && canPop
          ? IconButton(
              onPressed: onBack,
              icon: const Icon(
                Icons.arrow_back,
                size: 40,
              ),
            )
          : leading,
    ),
    title: title ??
        Container(
          height: 65,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.logoAidcodePng,
              ),
            ),
          ),
        ),
    actions: actions,
  );
}

sliverAppBar(
  BuildContext context, {
  Widget? leading,
  Widget? training,
  VoidCallback? onPressInfo,
  VoidCallback? onBack,
}) {
  final size = MediaQuery.of(context).size;
  final canPop = Navigator.of(context).canPop();
  return SliverAppBar(
    leading: const SizedBox(),
    floating: true,
    snap: true,
    expandedHeight: 65.0,
    flexibleSpace: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.15,
              child: leading == null && canPop
                  ? IconButton(
                      onPressed: onBack,
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
              width: size.width * 0.2,
              child: training ??
                  IconButton(
                    icon: const Icon(
                      Icons.info_outline,
                      size: 40,
                      color: AppColor.secondary,
                    ),
                    onPressed: onPressInfo,
                  ),
            ),
          ],
        ),
      ),
    ),
  );
}
