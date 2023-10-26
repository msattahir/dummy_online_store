import 'package:flutter/material.dart';

import '../../../../config/theme/app_theme.dart';

class ExploreAppBarTitle extends StatelessWidget {
  const ExploreAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore",
          style: AppStyles.header.copyWith(color: AppColors.white),
        ),
        Text(
          "Find products easy here",
          style: AppStyles.body.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
