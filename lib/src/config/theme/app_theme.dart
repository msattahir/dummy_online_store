import 'package:flutter/material.dart';

part 'app_colors.dart';
part 'app_styles.dart';

abstract class AppTheme {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.orange,
    ),
  );
}
