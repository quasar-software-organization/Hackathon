import 'package:aidcode/core/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData light(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primary,
        surface: AppColor.primary,
        brightness: Brightness.light,
        primary: AppColor.primary,
        secondary: AppColor.primary,
      ),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: AppColor.primary),
        ),
        fillColor: Colors.grey.shade100,
        filled: true,
        hintStyle: const TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
        labelStyle: const TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
      ),
    );
