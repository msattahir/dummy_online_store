import 'package:flutter/material.dart';

import '../../../../config/theme/app_theme.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome back,",
          style: AppStyles.body,
        ),
        Text(
          "SIRAJO Muhammad",
          style: AppStyles.header,
        ),
      ],
    );
  }
}
