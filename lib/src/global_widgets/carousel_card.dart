import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
    this.color,
    this.borderRadius = const BorderRadius.all(Radius.circular(16.0)),
    this.height,
    this.width,
    this.size = 100,
    this.padding,
    this.icon,
  });

  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final double? height, width, size;
  final EdgeInsets? padding;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon ?? Icons.collections,
              color: AppColors.white,
              size: size,
            ),
            Text(
              "Image here",
              style: AppStyles.body.copyWith(color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }
}
