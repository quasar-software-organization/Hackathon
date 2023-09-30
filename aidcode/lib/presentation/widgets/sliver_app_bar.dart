import 'package:flutter/material.dart';

sliverAppBar({
  Function()? onPressMenu,
}) =>
    SliverAppBar(
      expandedHeight: 140,
      flexibleSpace: Container(
        color: Colors.red,
        height: 140,
      ),
    );
