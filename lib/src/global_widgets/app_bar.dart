import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title,
    this.actions,
    this.bottom,
    this.backgroundColor,
    this.automaticallyImplyLeading = true,
  });

  final Color? backgroundColor;
  final Widget? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final bool automaticallyImplyLeading;

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: false,
      backgroundColor: backgroundColor ?? AppColors.transparent,
      elevation: 0,
      title: title,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Widget build(BuildContext context) {
    return appBar();
  }

  @override
  Size get preferredSize => appBar().preferredSize;
}
