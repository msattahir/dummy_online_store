import 'package:flutter/material.dart';

import '../../../../config/theme/app_theme.dart';

class ExploreAppBarActions extends StatelessWidget {
  const ExploreAppBarActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 9,
      ),
      width: 38,
      height: 38,
      decoration: const BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
    );
  }
}
